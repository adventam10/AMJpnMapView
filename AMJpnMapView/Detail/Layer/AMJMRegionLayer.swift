//
//  AMJMRegionLayer.swift
//  SampleAMJpnMap
//
//  Created by am10 on 2018/01/20.
//  Copyright © 2018年 am10. All rights reserved.
//

import UIKit

class AMJMRegionLayer: CAShapeLayer {

    var prefectureTypes: [AMJMPrefecture] {
        get {
            return [AMJMPrefecture]()
        }
    }
    
    var mapSize:CGFloat = 0
    var prefectureLayers = [CAShapeLayer]()
    var mapStrokeColor:UIColor = UIColor.green
    var mapFillColor:UIColor = UIColor.green
    
    func createLayer(pointList: [CGPoint]) -> CAShapeLayer {
        let path = UIBezierPath()
        for (index, point) in pointList.enumerated() {
            if index == 0 {
                path.move(to: point)
            } else {
                path.addLine(to: point)
            }
        }
        path.close()
        
        let layer = CAShapeLayer()
        layer.frame = bounds
        layer.path = path.cgPath
        layer.strokeColor = mapStrokeColor.cgColor
        layer.fillColor = mapFillColor.cgColor
        return layer
    }
    
    func createPoint(x: CGFloat, y: CGFloat) -> CGPoint {
        return CGPoint(x: mapSize * (x/500.0), y: mapSize * (y/500.0))
    }
    
    func drawMap(rect: CGRect) {
        mapSize = (rect.width < rect.height) ? rect.width : rect.height
        frame = rect
    }
    
    func setStrokeColor(color: UIColor, prefecture: AMJMPrefecture) {
        guard let index = prefectureTypes.firstIndex(of: prefecture) else {
            return
        }
        
        let targetLayer = prefectureLayers[index]
        targetLayer.strokeColor = color.cgColor
    }
    
    func setFillColor(color: UIColor, prefecture: AMJMPrefecture) {
        guard let index = prefectureTypes.firstIndex(of: prefecture) else {
            return
        }
        
        let targetLayer = prefectureLayers[index]
        targetLayer.fillColor = color.cgColor
    }
}
