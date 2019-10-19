//
//  AMJpnMapDetailView.swift
//  AMJpnMap, https://github.com/adventam10/AMJpnMapView
//
//  Created by am10 on 2018/01/18.
//  Copyright © 2018年 am10. All rights reserved.
//

import UIKit

@IBDesignable public class AMJpnMapDetailView: UIView {
    
    @IBInspectable public var strokeColor: UIColor = .green {
        didSet {
            AMPrefecture.allCases.forEach {
                strokeColors[$0] = strokeColor
            }
        }
    }
    @IBInspectable public var fillColor: UIColor = .green {
        didSet {
            AMPrefecture.allCases.forEach {
                fillColors[$0] = fillColor
            }
        }
    }
    @IBInspectable public var strokeColorOkinawaLine: UIColor = .black
    
    override public var bounds: CGRect {
        didSet {
            mapSize = (frame.width < frame.height) ? frame.width : frame.height
            reloadMap()
        }
    }
    
    private var strokeColors: [AMPrefecture: UIColor] = [:]
    private var fillColors: [AMPrefecture: UIColor] = [:]
    private var mapSize: CGFloat = 0
    private var regionLayers = [AMJMRegionLayer]()
    
    // MARK:- Initialize
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
    }
    
    convenience init() {
        self.init(frame: .zero)
    }
    
    override public func draw(_ rect: CGRect) {
        mapSize = (rect.width < rect.height) ? rect.width : rect.height
        reloadMap()
    }
    
    private func reloadMap() {
        clear()
        drawMap()
    }
    
    // MARK:- Draw
    private func drawMap() {
        let layerHokkaido = makeRegionLayer(.hokkaido)
        regionLayers.append(layerHokkaido)
        layer.addSublayer(layerHokkaido)
        
        let layerTohoku = makeRegionLayer(.tohoku)
        regionLayers.append(layerTohoku)
        layer.addSublayer(layerTohoku)
        
        let layerKanto = makeRegionLayer(.kanto)
        regionLayers.append(layerKanto)
        layer.addSublayer(layerKanto)
        
        let layerChubu = makeRegionLayer(.chubu)
        regionLayers.append(layerChubu)
        layer.addSublayer(layerChubu)
        
        let layerKinki = makeRegionLayer(.kinki)
        regionLayers.append(layerKinki)
        layer.addSublayer(layerKinki)
        
        let layerChugoku = makeRegionLayer(.chugoku)
        regionLayers.append(layerChugoku)
        layer.addSublayer(layerChugoku)
        
        let layerShikoku = makeRegionLayer(.shikoku)
        regionLayers.append(layerShikoku)
        layer.addSublayer(layerShikoku)
        
        let layerKyushu = makeRegionLayer(.kyushu)
        regionLayers.append(layerKyushu)
        layer.addSublayer(layerKyushu)
    }
    
    private func clear() {
        regionLayers.forEach { $0.removeFromSuperlayer() }
        regionLayers.removeAll()
    }
    
    private func makeRegionLayer(_ region: AMRegion) -> AMJMRegionLayer {
        let regionLayer = AMJMRegionLayer()
        regionLayer.region = region
        regionLayer.fillColors = fillColors
        regionLayer.strokeColors = strokeColors
        regionLayer.strokeColorOkinawaLine = strokeColorOkinawaLine
        regionLayer.drawMap(rect: bounds)
        return regionLayer
    }
   
    private func regionLayer(for prefecture: AMPrefecture) -> AMJMRegionLayer? {
        let index = regionLayers.firstIndex { $0.region.prefectures.contains(prefecture) }
        return index == nil ? nil : regionLayers[index!]
    }
    
    // MARK:- Public Method
    public func setStrokeColor(color: UIColor, prefecture: AMPrefecture) {
        strokeColors[prefecture] = color
        regionLayer(for: prefecture)?.setStrokeColor(color: color, prefecture: prefecture)
    }
    
    public func setFillColor(color: UIColor, prefecture: AMPrefecture) {
        fillColors[prefecture] = color
        regionLayer(for: prefecture)?.setFillColor(color: color, prefecture: prefecture)
    }
}
