//
//  AMJMKyushuLayer.swift
//  SampleAMJpnMap
//
//  Created by am10 on 2018/01/20.
//  Copyright © 2018年 am10. All rights reserved.
//

import UIKit

class AMJMKyushuLayer: AMJMRegionLayer{
    
    private var layerOkinawaLine:CAShapeLayer?
    
    var strokeColorOkinawaLine:UIColor = UIColor.black {
        didSet{
            guard let layerOkinawaLine = layerOkinawaLine else {
                return
            }
            
            layerOkinawaLine.strokeColor = strokeColorOkinawaLine.cgColor
        }
    }
    
    override var prefectureTypes: [AMJMPrefecture] {
        get {
            return [.fukuoka, .oita, .miyazaki, .kagoshima, .kumamoto, .saga, .nagasaki, .okinawa]
        }
    }
    
    override func drawMap(rect: CGRect) {
        super.drawMap(rect: rect)
        drawFukuoka()
        drawOita()
        drawMiyazaki()
        drawKagoshima()
        drawKumamoto()
        drawSaga()
        drawNagasaki()
        drawOkinawa()
    }
    
    private func drawFukuoka() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 111, y: 397))// Fukuoka・Oita
        pointList.append(createPoint(x: 103, y: 401))
        pointList.append(createPoint(x: 104, y: 410))// Fukuoka・Oita・Kumamoto
        pointList.append(createPoint(x: 93, y: 413))// Kumamoto・Fukuoka
        pointList.append(createPoint(x: 91, y: 411))
        pointList.append(createPoint(x: 88, y: 407))// Fukuoka・Saga
        pointList.append(createPoint(x: 95, y: 401))
        pointList.append(createPoint(x: 83, y: 398))// Fukuoka・Saga
        pointList.append(createPoint(x: 103, y: 385))
        pointList.append(createPoint(x: 105, y: 391))

        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawOita() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 111, y: 397))// Fukuoka・Oita
        pointList.append(createPoint(x: 122, y: 393))
        pointList.append(createPoint(x: 127, y: 398))
        pointList.append(createPoint(x: 118, y: 405))
        pointList.append(createPoint(x: 130, y: 407))
        pointList.append(createPoint(x: 133, y: 416))
        pointList.append(createPoint(x: 129, y: 421))// Oita・Miyazaki
        pointList.append(createPoint(x: 114, y: 418))// Oita・Miyazaki・Kumamoto
        pointList.append(createPoint(x: 110, y: 409))
        pointList.append(createPoint(x: 108, y: 408))
        pointList.append(createPoint(x: 108, y: 412))
        pointList.append(createPoint(x: 104, y: 410))// Fukuoka・Oita・Kumamoto
        pointList.append(createPoint(x: 103, y: 401))
        pointList.append(createPoint(x: 111, y: 397))// Fukuoka・Oita
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawMiyazaki() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 114, y: 418))// Oita・Miyazaki・Kumamoto
        pointList.append(createPoint(x: 129, y: 421))// Oita・Miyazaki
        pointList.append(createPoint(x: 124, y: 425))
        pointList.append(createPoint(x: 119, y: 437))
        pointList.append(createPoint(x: 114, y: 462))
        pointList.append(createPoint(x: 110, y: 457))// Miyazaki・Kagoshima
        pointList.append(createPoint(x: 111, y: 455))
        pointList.append(createPoint(x: 104, y: 450))
        pointList.append(createPoint(x: 100, y: 442))// Miyazaki・Kagoshima・Kumamoto
        pointList.append(createPoint(x: 110, y: 436))
        pointList.append(createPoint(x: 107, y: 428))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawKagoshima() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 100, y: 442))// Miyazaki・Kagoshima・Kumamoto
        pointList.append(createPoint(x: 104, y: 450))
        pointList.append(createPoint(x: 111, y: 455))
        pointList.append(createPoint(x: 110, y: 457))// Miyazaki・Kagoshima
        pointList.append(createPoint(x: 98, y: 472))
        pointList.append(createPoint(x: 98, y: 456))
        pointList.append(createPoint(x: 101, y: 456))
        pointList.append(createPoint(x: 101, y: 450))
        pointList.append(createPoint(x: 97, y: 450))
        pointList.append(createPoint(x: 94, y: 462))
        pointList.append(createPoint(x: 98, y: 467))
        pointList.append(createPoint(x: 83, y: 462))
        pointList.append(createPoint(x: 90, y: 458))
        pointList.append(createPoint(x: 85, y: 450))
        pointList.append(createPoint(x: 84, y: 436))
        pointList.append(createPoint(x: 88, y: 437))// Kumamoto・Kagoshima
        pointList.append(createPoint(x: 95, y: 437))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawKumamoto() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 93, y: 413))// Kumamoto・Fukuoka
        pointList.append(createPoint(x: 104, y: 410))// Fukuoka・Oita・Kumamoto
        pointList.append(createPoint(x: 108, y: 412))
        pointList.append(createPoint(x: 108, y: 408))
        pointList.append(createPoint(x: 110, y: 409))
        pointList.append(createPoint(x: 114, y: 418))// Oita・Miyazaki・Kumamoto
        pointList.append(createPoint(x: 107, y: 428))
        pointList.append(createPoint(x: 110, y: 436))
        pointList.append(createPoint(x: 100, y: 442))// Miyazaki・Kagoshima・Kumamoto
        pointList.append(createPoint(x: 95, y: 437))
        pointList.append(createPoint(x: 88, y: 437))// Kumamoto・Kagoshima
        pointList.append(createPoint(x: 89, y: 428))
        pointList.append(createPoint(x: 95, y: 420))
        pointList.append(createPoint(x: 96, y: 414))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawSaga() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 76, y: 402))// Saga・Nagasaki
        pointList.append(createPoint(x: 78, y: 397))
        pointList.append(createPoint(x: 83, y: 398))// Fukuoka・Saga
        pointList.append(createPoint(x: 95, y: 401))
        pointList.append(createPoint(x: 88, y: 407))// Fukuoka・Saga
        pointList.append(createPoint(x: 85, y: 415))// Saga・Nagasaki
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawNagasaki() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 76, y: 402))// Saga・Nagasaki
        pointList.append(createPoint(x: 85, y: 415))// Saga・Nagasaki
        pointList.append(createPoint(x: 83, y: 418))
        pointList.append(createPoint(x: 83, y: 419))
        pointList.append(createPoint(x: 85, y: 420))
        pointList.append(createPoint(x: 91, y: 421))
        pointList.append(createPoint(x: 86, y: 426))
        pointList.append(createPoint(x: 85, y: 422))
        pointList.append(createPoint(x: 76, y: 425))
        pointList.append(createPoint(x: 76, y: 420))
        pointList.append(createPoint(x: 72, y: 410))
        pointList.append(createPoint(x: 69, y: 406))
        pointList.append(createPoint(x: 72, y: 402))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
    
    private func drawOkinawa() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 52, y: 469))
        pointList.append(createPoint(x: 52, y: 473))
        pointList.append(createPoint(x: 38, y: 481))
        pointList.append(createPoint(x: 36, y: 490))
        pointList.append(createPoint(x: 32, y: 491))
        pointList.append(createPoint(x: 31, y: 489))
        pointList.append(createPoint(x: 34, y: 481))        
        pointList.append(createPoint(x: 42, y: 477))
        pointList.append(createPoint(x: 39, y: 474))
        pointList.append(createPoint(x: 39, y: 473))
        pointList.append(createPoint(x: 42, y: 472))
        pointList.append(createPoint(x: 43, y: 475))
        pointList.append(createPoint(x: 50, y: 468))

        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
        
        let linePath = UIBezierPath()
        linePath.move(to: createPoint(x: 21, y: 456))
        linePath.addLine(to: createPoint(x: 62, y: 456))
        linePath.addLine(to: createPoint(x: 62, y: 496))
        
        layerOkinawaLine = CAShapeLayer()
        guard let layerOkinawaLine = layerOkinawaLine else {
            return
        }
        
        layerOkinawaLine.frame = layer.bounds
        layerOkinawaLine.strokeColor = strokeColorOkinawaLine.cgColor
        layerOkinawaLine.fillColor = UIColor.clear.cgColor
        layerOkinawaLine.path = linePath.cgPath
        layer.addSublayer(layerOkinawaLine)
    }
}
