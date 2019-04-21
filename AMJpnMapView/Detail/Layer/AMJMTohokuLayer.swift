//
//  AMJMTohokuLayer.swift
//  SampleAMJpnMap
//
//  Created by am10 on 2018/01/20.
//  Copyright © 2018年 am10. All rights reserved.
//

import UIKit

class AMJMTohokuLayer: AMJMRegionLayer {

    override var prefectureTypes: [AMJMPrefecture] {
        get {
            return [.aomori, .iwate, .akita, .miyagi, .yamagata, .fukushima]
        }
    }
    
    override func drawMap(rect: CGRect) {
        super.drawMap(rect: rect)
        drawAomori()
        drawIwate()
        drawAkita()
        drawMiyagi()
        drawYamagata()
        drawFukushima()
    }
    
    private func drawAomori() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 356, y: 145))
        pointList.append(createPoint(x: 362, y: 151))
        pointList.append(createPoint(x: 371, y: 150))
        pointList.append(createPoint(x: 369, y: 172))
        pointList.append(createPoint(x: 373, y: 179))// Iwate・Aomori
        pointList.append(createPoint(x: 357, y: 184))// Aomori・Iwate・Akita
        pointList.append(createPoint(x: 358, y: 182))
        pointList.append(createPoint(x: 352, y: 178))
        pointList.append(createPoint(x: 345, y: 181))
        pointList.append(createPoint(x: 332, y: 180))// Akita・Aomori
        pointList.append(createPoint(x: 331, y: 172))
        pointList.append(createPoint(x: 339, y: 168))
        pointList.append(createPoint(x: 341, y: 154))
        pointList.append(createPoint(x: 344, y: 155))
        pointList.append(createPoint(x: 349, y: 154))
        pointList.append(createPoint(x: 351, y: 168))
        pointList.append(createPoint(x: 353, y: 165))
        pointList.append(createPoint(x: 355, y: 162))
        pointList.append(createPoint(x: 362, y: 166))
        pointList.append(createPoint(x: 363, y: 153))
        pointList.append(createPoint(x: 352, y: 156))

        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawIwate() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 357, y: 184))// Aomori・Iwate・Akita
        pointList.append(createPoint(x: 373, y: 179))// Iwate・Aomori
        pointList.append(createPoint(x: 379, y: 184))
        pointList.append(createPoint(x: 384, y: 206))
        pointList.append(createPoint(x: 378, y: 225))
        pointList.append(createPoint(x: 374, y: 230))// Iwate・Miyagi
        pointList.append(createPoint(x: 370, y: 230))
        pointList.append(createPoint(x: 364, y: 236))
        pointList.append(createPoint(x: 360, y: 236))
        pointList.append(createPoint(x: 353, y: 231))// Iwate・Miyagi・Akita
        pointList.append(createPoint(x: 349, y: 214))
        pointList.append(createPoint(x: 353, y: 200))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawAkita() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 332, y: 180))// Akita・Aomori
        pointList.append(createPoint(x: 345, y: 181))
        pointList.append(createPoint(x: 352, y: 178))
        pointList.append(createPoint(x: 358, y: 182))
        pointList.append(createPoint(x: 357, y: 184))// Aomori・Iwate・Akita
        pointList.append(createPoint(x: 353, y: 200))
        pointList.append(createPoint(x: 349, y: 214))
        pointList.append(createPoint(x: 353, y: 231))// Iwate・Miyagi・Akita
        pointList.append(createPoint(x: 346, y: 231))// Akita・Yamagata・Miyagi
        pointList.append(createPoint(x: 341, y: 225))
        pointList.append(createPoint(x: 328, y: 225))// Akita・Yamagata
        pointList.append(createPoint(x: 334, y: 207))
        pointList.append(createPoint(x: 332, y: 198))
        pointList.append(createPoint(x: 325, y: 200))
        pointList.append(createPoint(x: 323, y: 196))
        pointList.append(createPoint(x: 329, y: 193))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawMiyagi() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 374, y: 230))// Iwate・Miyagi
        pointList.append(createPoint(x: 368, y: 236))
        pointList.append(createPoint(x: 369, y: 251))
        pointList.append(createPoint(x: 363, y: 247))
        pointList.append(createPoint(x: 359, y: 249))
        pointList.append(createPoint(x: 356, y: 253))
        pointList.append(createPoint(x: 356, y: 263))// Miyagi・Fukushima
        pointList.append(createPoint(x: 351, y: 267))
        pointList.append(createPoint(x: 340, y: 261))// Miyagi・Fukushima・Yamagata
        pointList.append(createPoint(x: 340, y: 258))
        pointList.append(createPoint(x: 346, y: 249))
        pointList.append(createPoint(x: 346, y: 239))
        pointList.append(createPoint(x: 348, y: 235))
        pointList.append(createPoint(x: 346, y: 231))// Akita・Yamagata・Miyagi

        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawYamagata() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 328, y: 225))// Akita・Yamagata
        pointList.append(createPoint(x: 341, y: 225))
        pointList.append(createPoint(x: 346, y: 231))// Akita・Yamagata・Miyagi
        pointList.append(createPoint(x: 348, y: 235))
        pointList.append(createPoint(x: 346, y: 239))
        pointList.append(createPoint(x: 346, y: 249))
        pointList.append(createPoint(x: 340, y: 258))
        
        pointList.append(createPoint(x: 340, y: 261))// Miyagi・Fukushima・Yamagata
        pointList.append(createPoint(x: 338, y: 267))
        pointList.append(createPoint(x: 329, y: 266))
        pointList.append(createPoint(x: 326, y: 266))// Yamagata・Fukushima・Niigata
        pointList.append(createPoint(x: 325, y: 261))
        pointList.append(createPoint(x: 328, y: 249))
        pointList.append(createPoint(x: 322, y: 242))// Yamagata・Niigata
        pointList.append(createPoint(x: 328, y: 230))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawFukushima() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 356, y: 263))// Miyagi・Fukushima
        pointList.append(createPoint(x: 358, y: 273))
        pointList.append(createPoint(x: 355, y: 292))// Fukushima・Ibaraki
        pointList.append(createPoint(x: 347, y: 296))
        pointList.append(createPoint(x: 346, y: 297))
        pointList.append(createPoint(x: 340, y: 296))//Fukushima・Ibaraki・Tochigi
        pointList.append(createPoint(x: 337, y: 294))
        pointList.append(createPoint(x: 337, y: 290))
        pointList.append(createPoint(x: 329, y: 286))
        pointList.append(createPoint(x: 321, y: 292))
        pointList.append(createPoint(x: 321, y: 292))//Fukushima・Gunma・Tochigi
        pointList.append(createPoint(x: 313, y: 292))//Fukushima・Niigata・Gunma
        pointList.append(createPoint(x: 312, y: 277))
        pointList.append(createPoint(x: 321, y: 275))
        pointList.append(createPoint(x: 326, y: 266))// Yamagata・Fukushima・Niigata
        pointList.append(createPoint(x: 329, y: 266))
        pointList.append(createPoint(x: 338, y: 267))
        pointList.append(createPoint(x: 340, y: 261))// Miyagi・Fukushima・Yamagata
        pointList.append(createPoint(x: 351, y: 267))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
}
