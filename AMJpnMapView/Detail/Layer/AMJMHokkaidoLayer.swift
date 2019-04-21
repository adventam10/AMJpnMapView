//
//  AMJMHokkaidoLayer.swift
//  SampleAMJpnMap
//
//  Created by am10 on 2018/01/20.
//  Copyright © 2018年 am10. All rights reserved.
//

import UIKit

class AMJMHokkaidoLayer: AMJMRegionLayer {
    
    override var prefectureTypes: [AMJMPrefecture] {
        get {
            return [.hokkaido]
        }
    }
    
    override func drawMap(rect: CGRect) {
        super.drawMap(rect: rect)
        drawHokkaido()
    }

    private func drawHokkaido() {
        var pointList = [CGPoint]()
        pointList.append(createPoint(x: 382, y: 8))
        pointList.append(createPoint(x: 414, y: 45))
        pointList.append(createPoint(x: 450, y: 64))
        pointList.append(createPoint(x: 466, y: 51))
        pointList.append(createPoint(x: 461, y: 69))
        pointList.append(createPoint(x: 466, y: 83))
        pointList.append(createPoint(x: 479, y: 81))
        pointList.append(createPoint(x: 450, y: 96))
        pointList.append(createPoint(x: 434, y: 96))
        pointList.append(createPoint(x: 419, y: 112))
        pointList.append(createPoint(x: 413, y: 131))
        pointList.append(createPoint(x: 374, y: 105))
        pointList.append(createPoint(x: 356, y: 117))
        pointList.append(createPoint(x: 348, y: 104))
        pointList.append(createPoint(x: 348, y: 107))
        pointList.append(createPoint(x: 338, y: 119))
        pointList.append(createPoint(x: 345, y: 121))
        pointList.append(createPoint(x: 360, y: 134))
        pointList.append(createPoint(x: 356, y: 139))
        pointList.append(createPoint(x: 350, y: 136))
        pointList.append(createPoint(x: 346, y: 140))
        pointList.append(createPoint(x: 334, y: 149))
        pointList.append(createPoint(x: 336, y: 127))
        pointList.append(createPoint(x: 327, y: 119))
        pointList.append(createPoint(x: 331, y: 106))
        pointList.append(createPoint(x: 345, y: 95))
        pointList.append(createPoint(x: 342, y: 83))
        pointList.append(createPoint(x: 347, y: 81))
        pointList.append(createPoint(x: 369, y: 85))
        pointList.append(createPoint(x: 365, y: 68))
        pointList.append(createPoint(x: 372, y: 55))
        pointList.append(createPoint(x: 378, y: 36))
        pointList.append(createPoint(x: 372, y: 13))
        pointList.append(createPoint(x: 378, y: 14))
        
        let layer = createLayer(pointList: pointList)
        addSublayer(layer)
        prefectureLayers.append(layer)
    }
}
