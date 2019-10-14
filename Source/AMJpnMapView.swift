//
//  AMJpnMapView.swift
//  AMJpnMap, https://github.com/adventam10/AMJpnMapView
//
//  Created by am10 on 2017/12/29.
//  Copyright © 2017年 am10. All rights reserved.
//

import UIKit

public protocol AMJpnMapViewDelegate: AnyObject {
    func jpnMapView(_ jpnMapView: AMJpnMapView, didSelectAtRegion region: AMRegion)
    func jpnMapView(_ jpnMapView: AMJpnMapView, didDeselectAtRegion region: AMRegion)
}

@IBDesignable public class AMJpnMapView: UIView {
    
    @IBInspectable public var strokeColor: UIColor = .green
    @IBInspectable public var fillColor: UIColor = .green
    @IBInspectable public var strokeColorOkinawaLine: UIColor = .black
    
    weak public var delegate: AMJpnMapViewDelegate?
    
    override public var bounds: CGRect {
        didSet {
            mapSize = (frame.width < frame.height) ? frame.width : frame.height
            clear()
            drawMap()
        }
    }
    
    private var mapSize: CGFloat = 0
    private var regions: [AMRegion] = [.hokkaido, .tohoku, .kanto, .chubu, .kinki, .chugoku, .shikoku, .kyushu]
    private var anchorPoints = [CGPoint]()
    private var regionLayers = [CAShapeLayer]()
    private var layerOkinawaLine: CAShapeLayer?
    private var layerOkinawa: CAShapeLayer?
    private var preSelectRegion: AMRegion?
    
    // MARK:- Initialize
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
        initView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        initView()
    }
    
    convenience init() {
        self.init(frame: .zero)
    }
    
    private func initView() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tapAction(gesture:)))
        addGestureRecognizer(tap)
    }
    
    override public func draw(_ rect: CGRect) {
        mapSize = (rect.width < rect.height) ? rect.width : rect.height
        clear()
        drawMap()
    }
    
    // MARK:- Gesture Action
    @objc func tapAction(gesture: UITapGestureRecognizer) {
        let point = gesture.location(in: self)
        var isMap = false
        for (index, layer) in regionLayers.enumerated() {
            let path = UIBezierPath(cgPath: layer.path!)
            if path.contains(point) {
                isMap = true
                deselectLayer()
                let region = regions[index]
                if preSelectRegion == region {
                    preSelectRegion = nil
                } else {
                    preSelectRegion = region
                    layer.zPosition = 1
                    delegate?.jpnMapView(self, didSelectAtRegion: region)
                }
                break
            }
        }
        
        if !isMap {
            deselectLayer()
            preSelectRegion = nil
        }
    }
    
    private func deselectLayer() {
        guard let preSelectRegion = preSelectRegion else {
            return
        }
        
        let layer = regionLayers[preSelectRegion.rawValue]
        layer.zPosition = -1
        delegate?.jpnMapView(self, didDeselectAtRegion: preSelectRegion)
    }
    
    // MARK:- Draw
    private func drawMap() {
        regions.forEach { region in
            let regionLayer = makeLayer(points: region.points.map { makePoint(x: $0.x, y: $0.y) })
            regionLayer.strokeColor = strokeColor.cgColor
            regionLayer.fillColor = fillColor.cgColor
            layer.zPosition = -1
            if region == .kyushu {
                layerOkinawa = makeOkinawaLayer()
                layerOkinawaLine = makeLayerOkinawaLine()
                layerOkinawa!.addSublayer(layerOkinawaLine!)
                regionLayer.addSublayer(layerOkinawa!)
            }
            layer.addSublayer(regionLayer)
            regionLayers.append(regionLayer)
            
            let anchorPoint = makeCenterPoint(region.anchorPoints.map { makePoint(x: $0.x, y: $0.y) })
            anchorPoints.append(anchorPoint)
        }
    }
    
    private func clear() {
        anchorPoints.removeAll()
        regionLayers.forEach { $0.removeFromSuperlayer() }
        regionLayers.removeAll()
        layerOkinawa?.removeFromSuperlayer()
        layerOkinawaLine?.removeFromSuperlayer()
        
        layerOkinawa = nil
        layerOkinawaLine = nil
    }
    
    private func makeCenterPoint(_ points: [CGPoint]) -> CGPoint {
        let centerX = (points[0].x + points[1].x)/2
        let centerY = (points[0].y + points[1].y)/2
        return CGPoint(x: centerX/frame.width, y: centerY/frame.height)
    }
    
    private func makeOkinawaLayer() -> CAShapeLayer {
        let points = AMPrefecture.okinawa.points.map { makePoint(x: $0.x, y: $0.y) }
        let okinawaLayer = makeLayer(points: points)
        okinawaLayer.strokeColor = strokeColor.cgColor
        okinawaLayer.fillColor = fillColor.cgColor
        return okinawaLayer
    }
    
    private func makeLayerOkinawaLine() -> CAShapeLayer {
        let points = AMPrefecture.okinawa.okinawaLinePoints.map { makePoint(x: $0.x, y: $0.y) }
        let linePath = UIBezierPath()
        linePath.move(to: points.first!)
        points[1..<points.count].forEach { linePath.addLine(to: $0) }
        let layerOkinawaLine = CAShapeLayer()
        layerOkinawaLine.frame = bounds
        layerOkinawaLine.strokeColor = strokeColorOkinawaLine.cgColor
        layerOkinawaLine.fillColor = UIColor.clear.cgColor
        layerOkinawaLine.path = linePath.cgPath
        return layerOkinawaLine
    }
        
    private func makeLayer(points: [CGPoint]) -> CAShapeLayer {
        let path = UIBezierPath()
        path.move(to: points.first!)
        points[1..<points.count].forEach { path.addLine(to: $0) }
        path.close()
        
        let layer = CAShapeLayer()
        layer.frame = bounds
        layer.path = path.cgPath
        return layer
    }
    
    private func makePoint(x: CGFloat, y: CGFloat) -> CGPoint {
        return CGPoint(x: mapSize * (x/500.0), y: mapSize * (y/500.0))
    }
    
    private func makeCenterPoint(point1: CGPoint, point2: CGPoint) -> CGPoint {
        let centerX = (point1.x + point2.x)/2
        let centerY = (point1.y + point2.y)/2
        return CGPoint(x: centerX/frame.width, y: centerY/frame.height)
    }
    
    private func regionLayer(for region: AMRegion?) -> CAShapeLayer? {
        guard let region = region else {
            return nil
        }
        return regionLayers[region.rawValue]
    }
    
    // MARK:- Public Method
    public func setStrokeColor(color: UIColor, region: AMRegion) {
        guard let layer = regionLayer(for: region) else {
            return
        }
        layer.strokeColor = color.cgColor
        if region == .kyushu {
            layerOkinawa?.strokeColor = color.cgColor
        }
    }
    
    public func setFillColor(color: UIColor, region: AMRegion) {
        guard let layer = regionLayer(for: region) else {
            return
        }
        layer.fillColor = color.cgColor
        if region == .kyushu {
            layerOkinawa?.fillColor = color.cgColor
        }
    }
    
    public func setScale(scale: CGFloat, region: AMRegion) {
        guard let layer = regionLayer(for: region) else {
            return
        }
        layer.anchorPoint = (scale == 1.0) ? .init(x: 0.5, y: 0.5) : anchorPoints[region.rawValue]
        layer.setAffineTransform(CGAffineTransform(scaleX: scale, y: scale))
    }
}
