//
//  AMJMChugokuLayer.swift
//  SampleAMJpnMap
//
//  Created by am10 on 2018/01/20.
//  Copyright © 2018年 am10. All rights reserved.
//

import UIKit

class AMJMChugokuLayer: AMJMRegionLayer {

    override var prefectureTypes: [AMJMPrefecture] {
        get {
            return [.tottori, .okayama, .hiroshima, .yamaguchi, .shimane]
        }
    }
    
    override func drawMap(rect: CGRect) {
        super.drawMap(rect: rect)
        drawTottori()
        drawOkayama()
        drawHiroshima()
        drawYamaguchi()
        drawShimane()
    }
    
    private func drawTottori() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 165, y: 340))// Tottori・Shimane
        pointList.append(createPoint(x: 170, y: 337))
        pointList.append(createPoint(x: 182, y: 338))
        pointList.append(createPoint(x: 190, y: 334))// Tottori・Hyogo
        pointList.append(createPoint(x: 194, y: 343))
        pointList.append(createPoint(x: 192, y: 345))// Tottori・Hyogo・Okayama
        pointList.append(createPoint(x: 185, y: 346))
        pointList.append(createPoint(x: 178, y: 345))
        pointList.append(createPoint(x: 170, y: 343))
        pointList.append(createPoint(x: 164, y: 351))// Tottori・Hiroshima・Okayama
        pointList.append(createPoint(x: 159, y: 349))// Tottori・Hiroshima・Shimane
        pointList.append(createPoint(x: 164, y: 342))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawOkayama() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 192, y: 345))// Tottori・Hyogo・Okayama
        pointList.append(createPoint(x: 186, y: 360))// Hyogo・Okayama
        pointList.append(createPoint(x: 177, y: 370))
        pointList.append(createPoint(x: 169, y: 368))// Okayama・Hiroshima
        pointList.append(createPoint(x: 165, y: 358))
        pointList.append(createPoint(x: 164, y: 351))// Tottori・Hiroshima・Okayama
        pointList.append(createPoint(x: 170, y: 343))
        pointList.append(createPoint(x: 178, y: 345))
        pointList.append(createPoint(x: 185, y: 346))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawHiroshima() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 159, y: 349))// Tottori・Hiroshima・Shimane
        pointList.append(createPoint(x: 164, y: 351))// Tottori・Hiroshima・Okayama
        pointList.append(createPoint(x: 165, y: 358))
        pointList.append(createPoint(x: 169, y: 368))// Okayama・Hiroshima
        pointList.append(createPoint(x: 166, y: 369))
        pointList.append(createPoint(x: 145, y: 377))
        pointList.append(createPoint(x: 142, y: 371))
        pointList.append(createPoint(x: 139, y: 377))// Hiroshima・Yamaguchi
        pointList.append(createPoint(x: 136, y: 374))
        pointList.append(createPoint(x: 133, y: 370))// Hiroshima・Yamaguchi・Shimane
        pointList.append(createPoint(x: 138, y: 360))
        pointList.append(createPoint(x: 147, y: 357))
        pointList.append(createPoint(x: 152, y: 350))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawYamaguchi() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 133, y: 370))// Hiroshima・Yamaguchi・Shimane
        pointList.append(createPoint(x: 136, y: 374))
        pointList.append(createPoint(x: 139, y: 377))// Hiroshima・Yamaguchi
        pointList.append(createPoint(x: 138, y: 376))
        pointList.append(createPoint(x: 137, y: 383))
        pointList.append(createPoint(x: 131, y: 388))
        pointList.append(createPoint(x: 124, y: 381))
        pointList.append(createPoint(x: 112, y: 385))
        pointList.append(createPoint(x: 104, y: 384))
        pointList.append(createPoint(x: 106, y: 370))
        pointList.append(createPoint(x: 114, y: 372))
        pointList.append(createPoint(x: 123, y: 363))// Shimane・Yamaguchi
        pointList.append(createPoint(x: 123, y: 369))
        pointList.append(createPoint(x: 129, y: 374))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawShimane() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 123, y: 363))// Shimane・Yamaguchi
        pointList.append(createPoint(x: 147, y: 343))
        pointList.append(createPoint(x: 163, y: 335))
        pointList.append(createPoint(x: 164, y: 338))
        pointList.append(createPoint(x: 165, y: 340))// Tottori・Shimane
        pointList.append(createPoint(x: 164, y: 342))
        pointList.append(createPoint(x: 159, y: 349))// Tottori・Hiroshima・Shimane
        pointList.append(createPoint(x: 152, y: 350))
        pointList.append(createPoint(x: 147, y: 357))
        pointList.append(createPoint(x: 138, y: 360))
        pointList.append(createPoint(x: 133, y: 370))// Hiroshima・Yamaguchi・Shimane
        pointList.append(createPoint(x: 129, y: 374))
        pointList.append(createPoint(x: 123, y: 369))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
}
