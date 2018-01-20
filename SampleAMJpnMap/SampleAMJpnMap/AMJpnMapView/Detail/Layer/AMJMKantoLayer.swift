//
//  AMJMKantoLayer.swift
//  SampleAMJpnMap
//
//  Created by am10 on 2018/01/20.
//  Copyright © 2018年 am10. All rights reserved.
//

import UIKit

class AMJMKantoLayer: AMJMRegionLayer {

    override var prefectureTypes: [AMJMPrefecture] {
        get {
            
            return [.ibaraki, .chiba, .tochigi, .gunma, .saitama, .tokyo, .kanagawa]
        }
    }
    
    override func drawMap(rect: CGRect) {
        
        super.drawMap(rect: rect)
        drawIbaraki()
        drawChiba()
        drawTochigi()
        drawGunma()
        drawSaitama()
        drawTokyo()
        drawKanagawa()
    }
    
    private func drawIbaraki() {
        
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 340, y: 296))//福島・茨城・栃木
        pointList.append(createPoint(x: 346, y: 297))
        pointList.append(createPoint(x: 347, y: 296))
        pointList.append(createPoint(x: 355, y: 292))//福島・茨城
        pointList.append(createPoint(x: 345, y: 315))
        pointList.append(createPoint(x: 353, y: 331))// 茨城・千葉
        pointList.append(createPoint(x: 344, y: 325))
        pointList.append(createPoint(x: 338, y: 327))
        pointList.append(createPoint(x: 326, y: 320))// 茨城・千葉・埼玉
        pointList.append(createPoint(x: 323, y: 317))// 茨城・栃木・埼玉
        pointList.append(createPoint(x: 329, y: 312))
        pointList.append(createPoint(x: 338, y: 308))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawChiba() {
        
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 326, y: 320))// 茨城・千葉・埼玉
        pointList.append(createPoint(x: 338, y: 327))
        pointList.append(createPoint(x: 344, y: 325))
        pointList.append(createPoint(x: 353, y: 331))// 茨城・千葉
        pointList.append(createPoint(x: 343, y: 335))
        pointList.append(createPoint(x: 343, y: 347))
        pointList.append(createPoint(x: 327, y: 355))
        pointList.append(createPoint(x: 327, y: 343))
        pointList.append(createPoint(x: 334, y: 338))
        pointList.append(createPoint(x: 333, y: 333))
        pointList.append(createPoint(x: 329, y: 334))// 東京・千葉
        pointList.append(createPoint(x: 328, y: 327))// 東京・千葉・埼玉
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawTochigi() {
        
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 321, y: 292))//福島・群馬・栃木
        pointList.append(createPoint(x: 329, y: 286))
        pointList.append(createPoint(x: 337, y: 290))
        pointList.append(createPoint(x: 337, y: 294))
        pointList.append(createPoint(x: 340, y: 296))//福島・茨城・栃木
        pointList.append(createPoint(x: 338, y: 308))
        pointList.append(createPoint(x: 329, y: 312))
        pointList.append(createPoint(x: 323, y: 317))// 茨城・栃木・埼玉
        pointList.append(createPoint(x: 321, y: 317))//埼玉・群馬・栃木
        pointList.append(createPoint(x: 317, y: 311))
        pointList.append(createPoint(x: 318, y: 304))
        pointList.append(createPoint(x: 314, y: 302))

        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawGunma() {
        
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 300, y: 321))// 埼玉・群馬・長野
        pointList.append(createPoint(x: 297, y: 319))
        pointList.append(createPoint(x: 298, y: 309))
        pointList.append(createPoint(x: 292, y: 306))// 群馬・長野・新潟
        pointList.append(createPoint(x: 303, y: 297))
        pointList.append(createPoint(x: 308, y: 291))
        pointList.append(createPoint(x: 313, y: 292))//福島・群馬・新潟
        pointList.append(createPoint(x: 321, y: 292))//福島・群馬・栃木
        pointList.append(createPoint(x: 314, y: 302))
        pointList.append(createPoint(x: 318, y: 304))
        pointList.append(createPoint(x: 317, y: 311))
        pointList.append(createPoint(x: 321, y: 317))//埼玉・群馬・栃木
        pointList.append(createPoint(x: 311, y: 313))
        pointList.append(createPoint(x: 308, y: 317))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawSaitama() {
        
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 300, y: 321))// 埼玉・群馬・長野
        pointList.append(createPoint(x: 308, y: 317))
        pointList.append(createPoint(x: 311, y: 313))
        pointList.append(createPoint(x: 321, y: 317))//埼玉・群馬・栃木
        pointList.append(createPoint(x: 323, y: 317))// 茨城・栃木・埼玉
        pointList.append(createPoint(x: 326, y: 320))// 茨城・千葉・埼玉
        pointList.append(createPoint(x: 328, y: 327))// 東京・千葉・埼玉
        pointList.append(createPoint(x: 317, y: 329))
        pointList.append(createPoint(x: 310, y: 326))
        pointList.append(createPoint(x: 306, y: 327))// 東京・埼玉・山梨
        pointList.append(createPoint(x: 297, y: 323))// 埼玉・山梨・長野
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawTokyo() {
        
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 306, y: 327))// 東京・埼玉・山梨
        pointList.append(createPoint(x: 310, y: 326))
        pointList.append(createPoint(x: 317, y: 329))
        pointList.append(createPoint(x: 328, y: 327))// 東京・千葉・埼玉
        pointList.append(createPoint(x: 329, y: 334))// 東京・千葉
        pointList.append(createPoint(x: 327, y: 335))// 東京・神奈川
        pointList.append(createPoint(x: 320, y: 334))
        pointList.append(createPoint(x: 320, y: 335))
        pointList.append(createPoint(x: 312, y: 332))// 東京・神奈川・山梨
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawKanagawa() {
        
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 312, y: 332))// 東京・神奈川・山梨
        pointList.append(createPoint(x: 320, y: 335))
        pointList.append(createPoint(x: 320, y: 334))
        pointList.append(createPoint(x: 327, y: 335))// 東京・神奈川
        pointList.append(createPoint(x: 324, y: 342))
        pointList.append(createPoint(x: 326, y: 346))
        pointList.append(createPoint(x: 322, y: 349))
        pointList.append(createPoint(x: 321, y: 345))
        pointList.append(createPoint(x: 312, y: 345))
        pointList.append(createPoint(x: 308, y: 350))// 神奈川・静岡
        pointList.append(createPoint(x: 308, y: 343))
        pointList.append(createPoint(x: 305, y: 341))
        pointList.append(createPoint(x: 310, y: 334))// 神奈川・静岡・山梨
     
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    

}
