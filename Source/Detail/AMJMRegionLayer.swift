//
//  AMJMRegionLayer.swift
//  AMJpnMap, https://github.com/adventam10/AMJpnMapView
//
//  Created by am10 on 2018/01/20.
//  Copyright © 2018年 am10. All rights reserved.
//

import UIKit

class AMJMRegionLayer: CAShapeLayer {

    var region: AMRegion = .hokkaido
    var mapStrokeColor: UIColor = .green
    var mapFillColor: UIColor = .green
    var strokeColorOkinawaLine: UIColor = .black {
        didSet{
            layerOkinawaLine?.strokeColor = strokeColorOkinawaLine.cgColor
        }
    }
    
    private var mapSize: CGFloat = 0
    private var layerOkinawaLine: CAShapeLayer?
    private var prefectureLayers = [CAShapeLayer]()
    
    private func makeLayer(points: [CGPoint]) -> CAShapeLayer {
        let path = UIBezierPath()
        path.move(to: points.first!)
        points[1..<points.count].forEach { path.addLine(to: $0) }
        path.close()
        
        let layer = CAShapeLayer()
        layer.frame = bounds
        layer.path = path.cgPath
        layer.strokeColor = mapStrokeColor.cgColor
        layer.fillColor = mapFillColor.cgColor
        return layer
    }
    
    private func makePoint(x: CGFloat, y: CGFloat) -> CGPoint {
        return CGPoint(x: mapSize * (x/500.0), y: mapSize * (y/500.0))
    }
    
    private func makeLayerOkinawaLine(points: [CGPoint]) -> CAShapeLayer {
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
    
    private func prefectureLayer(for prefecture: AMPrefecture) -> CAShapeLayer? {
        guard let index = region.prefectures.firstIndex(of: prefecture) else {
            return nil
        }
        return prefectureLayers[index]
    }
    
    func drawMap(rect: CGRect) {
        mapSize = (rect.width < rect.height) ? rect.width : rect.height
        frame = rect
        region.prefectures.forEach { prefecture in
            let layer = makeLayer(points: prefecture.points.map { makePoint(x: $0.x, y: $0.y) })
            addSublayer(layer)
            prefectureLayers.append(layer)
            if prefecture == .okinawa {
                let points = prefecture.okinawaLinePoints.map { makePoint(x: $0.x, y: $0.y) }
                layerOkinawaLine = makeLayerOkinawaLine(points: points)
                layer.addSublayer(layerOkinawaLine!)
            }
        }
    }
    
    func setStrokeColor(color: UIColor, prefecture: AMPrefecture) {
        prefectureLayer(for: prefecture)?.strokeColor = color.cgColor
    }
    
    func setFillColor(color: UIColor, prefecture: AMPrefecture) {
        prefectureLayer(for: prefecture)?.fillColor = color.cgColor
    }
}
