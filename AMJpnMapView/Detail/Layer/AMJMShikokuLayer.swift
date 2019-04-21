//
//  AMJMShikokuLayer.swift
//  SampleAMJpnMap
//
//  Created by am10 on 2018/01/20.
//  Copyright © 2018年 am10. All rights reserved.
//

import UIKit

class AMJMShikokuLayer: AMJMRegionLayer {

    override var prefectureTypes: [AMJMPrefecture] {
        get {
            return [.kagawa, .tokushima, .kochi, .ehime]
        }
    }
    
    override func drawMap(rect: CGRect) {
        super.drawMap(rect: rect)
        drawKagawa()
        drawTokushima()
        drawKochi()
        drawEhime()
    }
    
    private func drawKagawa() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 172, y: 382))// Kagawa・Ehime
        pointList.append(createPoint(x: 171, y: 375))
        pointList.append(createPoint(x: 184, y: 373))
        pointList.append(createPoint(x: 187, y: 375))
        pointList.append(createPoint(x: 194, y: 377))// Kagawa・Tokushima
        pointList.append(createPoint(x: 182, y: 380))
        pointList.append(createPoint(x: 174, y: 384))// Kagawa・Tokushima・Ehime
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawTokushima() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 194, y: 377))// Kagawa・Tokushima
        pointList.append(createPoint(x: 197, y: 377))
        pointList.append(createPoint(x: 200, y: 389))
        pointList.append(createPoint(x: 189, y: 397))
        pointList.append(createPoint(x: 188, y: 398))// Tokushima・Kochi
        pointList.append(createPoint(x: 181, y: 390))
        pointList.append(createPoint(x: 173, y: 388))// Tokushima・Kochi・Ehime
        pointList.append(createPoint(x: 174, y: 384))// Kagawa・Tokushima・Ehime
        pointList.append(createPoint(x: 182, y: 380))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawKochi() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 173, y: 388))// Tokushima・Kochi・Ehime
        pointList.append(createPoint(x: 181, y: 390))
        pointList.append(createPoint(x: 188, y: 398))// Tokushima・Kochi
        pointList.append(createPoint(x: 186, y: 406))
        pointList.append(createPoint(x: 178, y: 399))
        pointList.append(createPoint(x: 167, y: 400))
        pointList.append(createPoint(x: 151, y: 421))
        pointList.append(createPoint(x: 146, y: 415))// Kochi・Ehime
        pointList.append(createPoint(x: 154, y: 400))
        pointList.append(createPoint(x: 162, y: 390))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawEhime() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 172, y: 382))// Kagawa・Ehime
        pointList.append(createPoint(x: 174, y: 384))// Kagawa・Tokushima・Ehime
        pointList.append(createPoint(x: 173, y: 388))// Tokushima・Kochi・Ehime
        pointList.append(createPoint(x: 162, y: 390))
        pointList.append(createPoint(x: 154, y: 400))
        pointList.append(createPoint(x: 146, y: 415))// Kochi・Ehime
        pointList.append(createPoint(x: 143, y: 417))
        pointList.append(createPoint(x: 143, y: 404))
        pointList.append(createPoint(x: 132, y: 403))
        pointList.append(createPoint(x: 148, y: 393))
        pointList.append(createPoint(x: 155, y: 380))
        pointList.append(createPoint(x: 158, y: 385))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
}
