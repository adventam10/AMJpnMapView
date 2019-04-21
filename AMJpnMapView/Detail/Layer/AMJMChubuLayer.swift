//
//  AMJMChubuLayer.swift
//  SampleAMJpnMap
//
//  Created by am10 on 2018/01/20.
//  Copyright © 2018年 am10. All rights reserved.
//

import UIKit

class AMJMChubuLayer: AMJMRegionLayer {

    override var prefectureTypes: [AMJMPrefecture] {
        get {
            return [.niigata, .nagano, .yamanashi, .shizuoka, .aichi, .mie, .gifu, .fukui, .ishikawa, .toyama]
        }
    }
    
    override func drawMap(rect: CGRect) {
        super.drawMap(rect: rect)
        drawNiigata()
        drawNagano()
        drawYamanashi()
        drawShizuoka()
        drawAichi()
        drawMie()
        drawGifu()
        drawFukui()
        drawIshikawa()
        drawToyama()
    }
    
    private func drawNiigata() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 322, y: 242))// Yamagata・Niigata
        pointList.append(createPoint(x: 328, y: 249))
        pointList.append(createPoint(x: 325, y: 261))
        pointList.append(createPoint(x: 326, y: 266))// Yamagata・Fukushima・Niigata
        pointList.append(createPoint(x: 321, y: 275))
        pointList.append(createPoint(x: 312, y: 277))
        pointList.append(createPoint(x: 313, y: 292))//Fukushima・Gunma・Niigata
        pointList.append(createPoint(x: 308, y: 291))
        pointList.append(createPoint(x: 303, y: 297))
        pointList.append(createPoint(x: 292, y: 306))// Gunma・Nagano・Niigata
        pointList.append(createPoint(x: 295, y: 292))
        pointList.append(createPoint(x: 285, y: 296))
        pointList.append(createPoint(x: 280, y: 294))
        pointList.append(createPoint(x: 276, y: 297))// Niigata・Toyama・Nagano
        pointList.append(createPoint(x: 274, y: 291))// Niigata・Toyama
        pointList.append(createPoint(x: 292, y: 282))
        pointList.append(createPoint(x: 302, y: 266))
        pointList.append(createPoint(x: 313, y: 259))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawNagano() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 273, y: 309))// Nagano・Toyama
        pointList.append(createPoint(x: 276, y: 297))// Niigata・Toyama・Nagano
        pointList.append(createPoint(x: 280, y: 294))
        pointList.append(createPoint(x: 285, y: 296))
        pointList.append(createPoint(x: 295, y: 292))
        pointList.append(createPoint(x: 292, y: 306))// Gunma・Nagano・Niigata
        pointList.append(createPoint(x: 298, y: 309))
        pointList.append(createPoint(x: 297, y: 319))
        pointList.append(createPoint(x: 300, y: 321))// Saitama・Gunma・Nagano
        pointList.append(createPoint(x: 297, y: 323))// Saitama・Yamanashi・Nagano
        pointList.append(createPoint(x: 292, y: 324))
        pointList.append(createPoint(x: 288, y: 326))
        pointList.append(createPoint(x: 288, y: 336))// Nagano・Yamanashi・Shizuoka
        pointList.append(createPoint(x: 284, y: 340))
        pointList.append(createPoint(x: 276, y: 347))//Nagano・Shizuoka・Aichi
        pointList.append(createPoint(x: 270, y: 345))// Nagano・Aichi・Gifu
        pointList.append(createPoint(x: 269, y: 333))
        pointList.append(createPoint(x: 265, y: 326))
        pointList.append(createPoint(x: 271, y: 323))
        pointList.append(createPoint(x: 272, y: 310))// Nagano・Gifu・Toyama

        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawYamanashi() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 288, y: 336))// Nagano・Yamanashi・Shizuoka
        pointList.append(createPoint(x: 288, y: 326))
        pointList.append(createPoint(x: 292, y: 324))
        pointList.append(createPoint(x: 297, y: 323))// Saitama・Yamanashi・Nagano
        pointList.append(createPoint(x: 306, y: 327))// Tokyo・Saitama・Yamanashi
        pointList.append(createPoint(x: 312, y: 332))// Kanagawa・Tokyo・Yamanashi
        pointList.append(createPoint(x: 310, y: 334))// Kanagawa・Shizuoka・Yamanashi
        pointList.append(createPoint(x: 297, y: 342))
        pointList.append(createPoint(x: 294, y: 345))
        pointList.append(createPoint(x: 292, y: 347))
        pointList.append(createPoint(x: 289, y: 341))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawShizuoka() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 310, y: 334))// Kanagawa・Shizuoka・Yamanashi
        pointList.append(createPoint(x: 305, y: 341))
        pointList.append(createPoint(x: 308, y: 343))
        pointList.append(createPoint(x: 308, y: 350))// Kanagawa・Shizuoka
        pointList.append(createPoint(x: 311, y: 355))
        pointList.append(createPoint(x: 304, y: 365))
        pointList.append(createPoint(x: 300, y: 362))
        pointList.append(createPoint(x: 300, y: 354))
        pointList.append(createPoint(x: 305, y: 351))
        pointList.append(createPoint(x: 297, y: 349))
        pointList.append(createPoint(x: 284, y: 365))
        pointList.append(createPoint(x: 270, y: 364))// Aichi・Shizuoka
        pointList.append(createPoint(x: 268, y: 358))
        pointList.append(createPoint(x: 276, y: 347))//Nagano・Shizuoka・Aichi
        pointList.append(createPoint(x: 284, y: 340))
        pointList.append(createPoint(x: 288, y: 336))// Nagano・Yamanashi・Shizuoka
        pointList.append(createPoint(x: 289, y: 341))
        pointList.append(createPoint(x: 292, y: 347))
        pointList.append(createPoint(x: 294, y: 345))
        pointList.append(createPoint(x: 297, y: 342))

        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawAichi() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 270, y: 345))// Nagano・Aichi・Gifu
        pointList.append(createPoint(x: 276, y: 347))//Nagano・Shizuoka・Aichi
        pointList.append(createPoint(x: 268, y: 358))
        pointList.append(createPoint(x: 270, y: 364))// Aichi・Shizuoka
        pointList.append(createPoint(x: 258, y: 366))
        pointList.append(createPoint(x: 265, y: 361))
        pointList.append(createPoint(x: 259, y: 360))
        pointList.append(createPoint(x: 256, y: 359))
        pointList.append(createPoint(x: 257, y: 363))
        pointList.append(createPoint(x: 252, y: 360))
        pointList.append(createPoint(x: 253, y: 353))
        pointList.append(createPoint(x: 250, y: 351))// Aichi・Mie
        pointList.append(createPoint(x: 249, y: 347))// Aichi・Mie・Gifu
        pointList.append(createPoint(x: 251, y: 342))
        pointList.append(createPoint(x: 255, y: 341))
        pointList.append(createPoint(x: 262, y: 344))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawMie() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 249, y: 347))// Aichi・Mie・Gifu
        pointList.append(createPoint(x: 250, y: 351))// Aichi・Mie
        pointList.append(createPoint(x: 244, y: 363))
        pointList.append(createPoint(x: 254, y: 369))
        pointList.append(createPoint(x: 253, y: 375))
        pointList.append(createPoint(x: 240, y: 378))
        pointList.append(createPoint(x: 239, y: 383))
        pointList.append(createPoint(x: 231, y: 391))//Wakayama・Mie
        pointList.append(createPoint(x: 228, y: 387))// Wakayama・Mie・Nara
        pointList.append(createPoint(x: 234, y: 381))
        pointList.append(createPoint(x: 233, y: 372))
        pointList.append(createPoint(x: 237, y: 370))
        pointList.append(createPoint(x: 232, y: 361))// Kyoto・Mie・Nara
        pointList.append(createPoint(x: 234, y: 360))// Kyoto・Mie・Shiga
        pointList.append(createPoint(x: 244, y: 347))
        pointList.append(createPoint(x: 242, y: 346))// Gifu・Mie・Shiga
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawGifu() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 272, y: 310))// Nagano・Gifu・Toyama
        pointList.append(createPoint(x: 271, y: 323))
        pointList.append(createPoint(x: 265, y: 326))
        pointList.append(createPoint(x: 269, y: 333))
        pointList.append(createPoint(x: 270, y: 345))// Nagano・Aichi・Gifu
        pointList.append(createPoint(x: 262, y: 344))
        pointList.append(createPoint(x: 255, y: 341))
        pointList.append(createPoint(x: 251, y: 342))
        pointList.append(createPoint(x: 249, y: 347))// Aichi・Mie・Gifu
        pointList.append(createPoint(x: 242, y: 346))// Gifu・Mie・Shiga
        pointList.append(createPoint(x: 239, y: 333))// Gifu・Fukui・Shiga
        pointList.append(createPoint(x: 242, y: 330))
        pointList.append(createPoint(x: 251, y: 327))
        pointList.append(createPoint(x: 249, y: 321))
        pointList.append(createPoint(x: 250, y: 317))// Gifu・Fukui・Ishikawa
        pointList.append(createPoint(x: 252, y: 310))// Gifu・Toyama・Ishikawa
        pointList.append(createPoint(x: 258, y: 313))
        pointList.append(createPoint(x: 261, y: 309))
 
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawFukui() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 238, y: 313))// Fukui・Ishikawa
        pointList.append(createPoint(x: 244, y: 317))
        pointList.append(createPoint(x: 250, y: 317))// Gifu・Fukui・Ishikawa
        pointList.append(createPoint(x: 249, y: 321))
        pointList.append(createPoint(x: 251, y: 327))
        pointList.append(createPoint(x: 242, y: 330))
        pointList.append(createPoint(x: 239, y: 333))// Gifu・Fukui・Shiga
        pointList.append(createPoint(x: 228, y: 338))
        pointList.append(createPoint(x: 225, y: 343))// Kyoto・Fukui・Shiga
        pointList.append(createPoint(x: 222, y: 343))
        pointList.append(createPoint(x: 215, y: 339))// Kyoto・Fukui
        pointList.append(createPoint(x: 222, y: 337))
        pointList.append(createPoint(x: 233, y: 330))
        pointList.append(createPoint(x: 228, y: 323))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawIshikawa() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 238, y: 313))// Fukui・Ishikawa
        pointList.append(createPoint(x: 255, y: 290))
        pointList.append(createPoint(x: 249, y: 282))
        pointList.append(createPoint(x: 265, y: 274))
        pointList.append(createPoint(x: 264, y: 281))
        pointList.append(createPoint(x: 258, y: 284))
        pointList.append(createPoint(x: 258, y: 291))// Ishikawa・Toyama
        pointList.append(createPoint(x: 254, y: 296))
        pointList.append(createPoint(x: 252, y: 310))// Gifu・Toyama・Ishikawa
        pointList.append(createPoint(x: 250, y: 317))// Gifu・Fukui・Ishikawa
        pointList.append(createPoint(x: 244, y: 317))

        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawToyama() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 258, y: 291))// Ishikawa・Toyama
        pointList.append(createPoint(x: 258, y: 297))
        pointList.append(createPoint(x: 266, y: 298))
        pointList.append(createPoint(x: 266, y: 293))
        pointList.append(createPoint(x: 274, y: 291))// Niigata・Toyama
        pointList.append(createPoint(x: 276, y: 297))// Niigata・Toyama・Nagano
        pointList.append(createPoint(x: 272, y: 310))// Nagano・Gifu・Toyama
        pointList.append(createPoint(x: 261, y: 309))
        pointList.append(createPoint(x: 258, y: 313))
        pointList.append(createPoint(x: 252, y: 310))// Gifu・Toyama・Ishikawa
        pointList.append(createPoint(x: 254, y: 296))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
}
