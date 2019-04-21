//
//  AMJMKinkiLayer.swift
//  SampleAMJpnMap
//
//  Created by am10 on 2018/01/20.
//  Copyright © 2018年 am10. All rights reserved.
//

import UIKit

class AMJMKinkiLayer: AMJMRegionLayer {

    override var prefectureTypes: [AMJMPrefecture] {
        get {
            return [.shiga, .kyoto, .hyogo, .nara, .wakayama, .osaka]
        }
    }
    
    override func drawMap(rect: CGRect) {
        super.drawMap(rect: rect)
        drawShiga()
        drawKyoto()
        drawHyogo()
        drawNara()
        drawWakayama()
        drawOsaka()
    }
    
    private func drawShiga() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 225, y: 343))// Kyoto・Fukui・Shiga
        pointList.append(createPoint(x: 228, y: 338))
        pointList.append(createPoint(x: 239, y: 333))// Gifu・Fukui・Shiga
        pointList.append(createPoint(x: 242, y: 346))// Gifu・Mie・Shiga
        pointList.append(createPoint(x: 244, y: 347))
        pointList.append(createPoint(x: 234, y: 360))// Kyoto・Mie・Shiga
        pointList.append(createPoint(x: 229, y: 353))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawKyoto() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 215, y: 339))// Kyoto・Fukui
        pointList.append(createPoint(x: 222, y: 343))
        pointList.append(createPoint(x: 225, y: 343))// Kyoto・Fukui・Shiga
        pointList.append(createPoint(x: 229, y: 353))
        pointList.append(createPoint(x: 234, y: 360))// Kyoto・Mie・Shiga
        pointList.append(createPoint(x: 232, y: 361))// Kyoto・Mie・Nara
        pointList.append(createPoint(x: 225, y: 360))// Kyoto・Osaka・Nara
        pointList.append(createPoint(x: 225, y: 355))// Kyoto・Osaka・Hyogo
        pointList.append(createPoint(x: 217, y: 349))
        pointList.append(createPoint(x: 204, y: 342))
        pointList.append(createPoint(x: 208, y: 337))
        pointList.append(createPoint(x: 203, y: 334))//Kyoto・Hyogo
        pointList.append(createPoint(x: 211, y: 329))
        pointList.append(createPoint(x: 215, y: 332))
        pointList.append(createPoint(x: 214, y: 336))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawHyogo() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 190, y: 334))// Tottori・Hyogo
        pointList.append(createPoint(x: 203, y: 334))//Kyoto・Hyogo
        pointList.append(createPoint(x: 208, y: 337))
        pointList.append(createPoint(x: 204, y: 342))
        pointList.append(createPoint(x: 217, y: 349))
        pointList.append(createPoint(x: 225, y: 355))// Kyoto・Osaka・Hyogo
        pointList.append(createPoint(x: 218, y: 362))//Osaka・Hyogo
        pointList.append(createPoint(x: 212, y: 362))
        pointList.append(createPoint(x: 205, y: 365))
        pointList.append(createPoint(x: 198, y: 360))
        pointList.append(createPoint(x: 186, y: 360))// Hyogo・Okayama
        pointList.append(createPoint(x: 192, y: 345))// Tottori・Hyogo・Okayama
        pointList.append(createPoint(x: 194, y: 343))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawNara() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 232, y: 361))// Kyoto・Mie・Nara
        pointList.append(createPoint(x: 237, y: 370))
        pointList.append(createPoint(x: 233, y: 372))
        pointList.append(createPoint(x: 234, y: 381))
        pointList.append(createPoint(x: 228, y: 387))// Wakayama・Mie・Nara
        pointList.append(createPoint(x: 225, y: 387))
        pointList.append(createPoint(x: 220, y: 381))
        pointList.append(createPoint(x: 225, y: 376))
        pointList.append(createPoint(x: 225, y: 372))// Wakayama・Osaka・Nara
        pointList.append(createPoint(x: 225, y: 360))// Kyoto・Osaka・Nara
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawWakayama() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 211, y: 372))//Wakayama・Osaka
        pointList.append(createPoint(x: 225, y: 372))// Wakayama・Osaka・Nara
        pointList.append(createPoint(x: 225, y: 376))
        pointList.append(createPoint(x: 220, y: 381))
        pointList.append(createPoint(x: 225, y: 387))
        pointList.append(createPoint(x: 228, y: 387))// Wakayama・Mie・Nara
        pointList.append(createPoint(x: 231, y: 391))//Wakayama・Mie
        pointList.append(createPoint(x: 225, y: 401))
        pointList.append(createPoint(x: 216, y: 397))
        pointList.append(createPoint(x: 217, y: 390))
        pointList.append(createPoint(x: 209, y: 385))
        pointList.append(createPoint(x: 209, y: 374))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawOsaka() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 225, y: 355))// Kyoto・Osaka・Hyogo
        pointList.append(createPoint(x: 225, y: 360))// Kyoto・Osaka・Nara
        pointList.append(createPoint(x: 225, y: 372))// Wakayama・Osaka・Nara
        pointList.append(createPoint(x: 211, y: 372))//Wakayama・Osaka
        pointList.append(createPoint(x: 217, y: 366))
        pointList.append(createPoint(x: 218, y: 362))//Osaka・Hyogo
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
}
