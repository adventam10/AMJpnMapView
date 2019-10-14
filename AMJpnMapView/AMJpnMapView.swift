//
//  AMJpnMapView.swift
//  TestProject
//
//  Created by am10 on 2017/12/29.
//  Copyright © 2017年 am10. All rights reserved.
//

import UIKit

public enum AMJMRegion: Int {
    case none = -1
    case hokkaido = 0
    case tohoku = 1
    case kanto = 2
    case chubu = 3
    case kinki = 4
    case chugoku = 5
    case shikoku = 6
    case kyushu = 7
}

public protocol AMJpnMapViewDelegate: AnyObject {
    func jpnMapView(_ jpnMapView: AMJpnMapView, didSelectAtRegion region: AMJMRegion)
    func jpnMapView(_ jpnMapView: AMJpnMapView, didDeselectAtRegion region: AMJMRegion)
}

@IBDesignable public class AMJpnMapView: UIView {
    
    override public var bounds: CGRect {
        didSet {
            mapSize = (frame.width < frame.height) ? frame.width : frame.height
            clear()
            drawMap()
        }
    }
    
    weak public var delegate: AMJpnMapViewDelegate?
    @IBInspectable public var strokeColor: UIColor = .green
    @IBInspectable public var fillColor: UIColor = .green
    @IBInspectable public var strokeColorOkinawaLine: UIColor = .black
    
    private var mapSize: CGFloat = 0
    private var layerHokkaido: CAShapeLayer?
    private var layerTohoku: CAShapeLayer?
    private var layerKanto: CAShapeLayer?
    private var layerChubu: CAShapeLayer?
    private var layerKinki: CAShapeLayer?
    private var layerChugoku: CAShapeLayer?
    private var layerShikoku: CAShapeLayer?
    private var layerKyushu: CAShapeLayer?
    private var layerOkinawa: CAShapeLayer?
    private var anchorPointList = [CGPoint]()
    private var regionLayers = [CAShapeLayer]()
    private var layerOkinawaLine: CAShapeLayer?
    private var preSelectRegion: AMJMRegion = .none
    
    //MARK:- Initialize
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
        initView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        initView()
    }
    
    convenience init() {
        self.init(frame: .zero)
    }
    
    private func initView() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tapAction(gesture:)))
        addGestureRecognizer(tap)
    }
    
    override public func draw(_ rect: CGRect) {
        mapSize = (rect.width < rect.height) ? rect.width : rect.height
        clear()
        drawMap()
    }
    
    //MARK:- Gesture Action
    @objc func tapAction(gesture: UITapGestureRecognizer) {
        let point = gesture.location(in: self)
        var isMap = false
        for (index, layer) in regionLayers.enumerated() {
            let path = UIBezierPath(cgPath: layer.path!)
            if path.contains(point) {
                isMap = true
                deselectLayer()
                if preSelectRegion.rawValue == index {
                    preSelectRegion = .none
                } else {
                    preSelectRegion = AMJMRegion(rawValue: index) ?? .none
                    layer.zPosition = 1
                    delegate?.jpnMapView(self, didSelectAtRegion: preSelectRegion)
                }
                break
            }
        }
        
        if !isMap {
            deselectLayer()
            preSelectRegion = .none
        }
    }
    
    private func deselectLayer() {
        if preSelectRegion == .none {
            return
        }
        
        let layer = regionLayers[preSelectRegion.rawValue]
        layer.zPosition = -1
        delegate?.jpnMapView(self, didDeselectAtRegion: preSelectRegion)
    }
    
    private func reloadMap() {
        clear()
        drawMap()
    }
    
    //MARK:- Draw
    private func drawMap() {
        drawHokkaido()
        drawTohoku()
        drawKanto()
        drawChubu()
        drawKinki()
        drawChugoku()
        drawShikoku()
        drawKyushu()
        drawOkinawa()
        
        for layer in regionLayers {
            layer.strokeColor = strokeColor.cgColor
            layer.fillColor = fillColor.cgColor
            layer.zPosition = -1
        }
    
        layerOkinawa?.strokeColor = strokeColor.cgColor
        layerOkinawa?.fillColor = fillColor.cgColor
    }
    
    private func drawHokkaido() {
        var pointList = [CGPoint]()
        pointList.append(makePoint(x: 382, y: 8))
        pointList.append(makePoint(x: 414, y: 45))
        pointList.append(makePoint(x: 450, y: 64))
        pointList.append(makePoint(x: 466, y: 51))
        pointList.append(makePoint(x: 461, y: 69))
        pointList.append(makePoint(x: 466, y: 83))
        pointList.append(makePoint(x: 479, y: 81))
        pointList.append(makePoint(x: 450, y: 96))
        pointList.append(makePoint(x: 434, y: 96))
        pointList.append(makePoint(x: 419, y: 112))
        pointList.append(makePoint(x: 413, y: 131))
        pointList.append(makePoint(x: 374, y: 105))
        pointList.append(makePoint(x: 356, y: 117))
        pointList.append(makePoint(x: 348, y: 104))
        pointList.append(makePoint(x: 348, y: 107))
        pointList.append(makePoint(x: 338, y: 119))
        pointList.append(makePoint(x: 345, y: 121))
        pointList.append(makePoint(x: 360, y: 134))
        pointList.append(makePoint(x: 356, y: 139))
        pointList.append(makePoint(x: 350, y: 136))
        pointList.append(makePoint(x: 346, y: 140))
        pointList.append(makePoint(x: 334, y: 149))
        pointList.append(makePoint(x: 336, y: 127))
        pointList.append(makePoint(x: 327, y: 119))
        pointList.append(makePoint(x: 331, y: 106))
        pointList.append(makePoint(x: 345, y: 95))
        pointList.append(makePoint(x: 342, y: 83))
        pointList.append(makePoint(x: 347, y: 81))
        pointList.append(makePoint(x: 369, y: 85))
        pointList.append(makePoint(x: 365, y: 68))
        pointList.append(makePoint(x: 372, y: 55))
        pointList.append(makePoint(x: 378, y: 36))
        pointList.append(makePoint(x: 372, y: 13))
        pointList.append(makePoint(x: 378, y: 14))
        
        layerHokkaido = makeLayer(pointList: pointList)
        layer.addSublayer(layerHokkaido!)
        regionLayers.append(layerHokkaido!)
        anchorPointList.append(makeCenterPoint(point1: makePoint(x: 382, y: 8),
                                               point2: makePoint(x: 413, y: 131)))
    }
    
    private func drawTohoku() {
        var pointList = [CGPoint]()
        pointList.append(makePoint(x: 356, y: 145))
        pointList.append(makePoint(x: 362, y: 151))
        pointList.append(makePoint(x: 371, y: 150))
        pointList.append(makePoint(x: 369, y: 172))
        pointList.append(makePoint(x: 373, y: 179))// Aomori・Iwate
        pointList.append(makePoint(x: 379, y: 184))
        pointList.append(makePoint(x: 384, y: 206))
        pointList.append(makePoint(x: 378, y: 225))
        pointList.append(makePoint(x: 374, y: 230))// Iwate・Miyagi
        pointList.append(makePoint(x: 368, y: 236))
        pointList.append(makePoint(x: 369, y: 251))
        pointList.append(makePoint(x: 363, y: 247))
        pointList.append(makePoint(x: 359, y: 249))
        pointList.append(makePoint(x: 356, y: 253))
        pointList.append(makePoint(x: 356, y: 263))// Miyagi・Fukushima
        pointList.append(makePoint(x: 358, y: 273))
        /// point of contact with Kanto
        pointList.append(makePoint(x: 355, y: 292))//Fukushima・Ibaraki
        pointList.append(makePoint(x: 347, y: 296))
        pointList.append(makePoint(x: 346, y: 297))
        pointList.append(makePoint(x: 340, y: 296))//Fukushima・Ibaraki・Tochigi
        pointList.append(makePoint(x: 337, y: 294))
        pointList.append(makePoint(x: 337, y: 290))
        pointList.append(makePoint(x: 329, y: 286))
        pointList.append(makePoint(x: 321, y: 292))//Fukushima・Gunma・Tochigi
        /// point of contact with Kanto, Chubu
        pointList.append(makePoint(x: 313, y: 292))//Fukushima・Gunma・Niigata
        /// point of contact with Chubu
        pointList.append(makePoint(x: 312, y: 277))
        pointList.append(makePoint(x: 321, y: 275))
        pointList.append(makePoint(x: 326, y: 266))// Yamagata・Fukushima・Niigata
        pointList.append(makePoint(x: 325, y: 261))
        pointList.append(makePoint(x: 328, y: 249))
        pointList.append(makePoint(x: 322, y: 242))// Yamagata・Niigata
        pointList.append(makePoint(x: 328, y: 230))
        pointList.append(makePoint(x: 328, y: 225))// Akita・Yamagata
        pointList.append(makePoint(x: 334, y: 207))
        pointList.append(makePoint(x: 332, y: 198))
        pointList.append(makePoint(x: 325, y: 200))
        pointList.append(makePoint(x: 323, y: 196))
        pointList.append(makePoint(x: 329, y: 193))
        pointList.append(makePoint(x: 332, y: 180))// Aomori・Akita
        pointList.append(makePoint(x: 331, y: 172))
        pointList.append(makePoint(x: 339, y: 168))
        pointList.append(makePoint(x: 341, y: 154))
        pointList.append(makePoint(x: 344, y: 155))
        pointList.append(makePoint(x: 349, y: 154))
        pointList.append(makePoint(x: 351, y: 168))
        pointList.append(makePoint(x: 353, y: 165))
        pointList.append(makePoint(x: 355, y: 162))
        pointList.append(makePoint(x: 362, y: 166))
        pointList.append(makePoint(x: 363, y: 153))
        pointList.append(makePoint(x: 352, y: 156))
        
        layerTohoku = makeLayer(pointList: pointList)
        layer.addSublayer(layerTohoku!)
        regionLayers.append(layerTohoku!)
        anchorPointList.append(makeCenterPoint(point1: makePoint(x: 356, y: 145),
                                               point2: makePoint(x: 329, y: 286)))
    }
    
    private func drawKanto() {
        var pointList = [CGPoint]()
        /// point of contact with Tohoku, Chubu
        pointList.append(makePoint(x: 313, y: 292))//Fukushima・Gunma・Niigata
        /// point of contact with Tohoku
        pointList.append(makePoint(x: 321, y: 292))//Fukushima・Gunma・Tochigi
        pointList.append(makePoint(x: 329, y: 286))
        pointList.append(makePoint(x: 337, y: 290))
        pointList.append(makePoint(x: 337, y: 294))
        pointList.append(makePoint(x: 340, y: 296))//Fukushima・Ibaraki・Tochigi
        pointList.append(makePoint(x: 346, y: 297))
        pointList.append(makePoint(x: 347, y: 296))
        pointList.append(makePoint(x: 355, y: 292))//Fukushima・Ibaraki
        pointList.append(makePoint(x: 345, y: 315))
        pointList.append(makePoint(x: 353, y: 331))
        pointList.append(makePoint(x: 343, y: 335))
        pointList.append(makePoint(x: 343, y: 347))
        pointList.append(makePoint(x: 327, y: 355))
        pointList.append(makePoint(x: 327, y: 343))
        pointList.append(makePoint(x: 334, y: 338))
        pointList.append(makePoint(x: 333, y: 333))
        pointList.append(makePoint(x: 329, y: 334))// Tokyo・Chiba
        pointList.append(makePoint(x: 327, y: 335))// Tokyo・Kanagawa
        pointList.append(makePoint(x: 324, y: 342))
        pointList.append(makePoint(x: 326, y: 346))
        pointList.append(makePoint(x: 322, y: 349))
        pointList.append(makePoint(x: 321, y: 345))
        pointList.append(makePoint(x: 312, y: 345))
        /// point of contact with Chubu
        pointList.append(makePoint(x: 308, y: 350))// Kanagawa・Shizuoka
        pointList.append(makePoint(x: 308, y: 343))
        pointList.append(makePoint(x: 305, y: 341))
        pointList.append(makePoint(x: 310, y: 334))// Kanagawa・Shizuoka・Yamanashi
        pointList.append(makePoint(x: 312, y: 332))// Kanagawa・Tokyo・Yamanashi
        pointList.append(makePoint(x: 306, y: 327))// Tokyo・Saitama・Yamanashi
        pointList.append(makePoint(x: 297, y: 323))// Saitama・Yamanashi・Nagano
        pointList.append(makePoint(x: 300, y: 321))// Saitama・Gunma・Nagano
        pointList.append(makePoint(x: 297, y: 319))
        pointList.append(makePoint(x: 298, y: 309))
        pointList.append(makePoint(x: 292, y: 306))// Gunma・Nagano・Niigata
        pointList.append(makePoint(x: 303, y: 297))
        pointList.append(makePoint(x: 308, y: 291))
        
        layerKanto = makeLayer(pointList: pointList)
        layer.addSublayer(layerKanto!)
        regionLayers.append(layerKanto!)
        anchorPointList.append(makeCenterPoint(point1: makePoint(x: 329, y: 286),
                                               point2: makePoint(x: 327, y: 355)))
    }
    
    private func drawChubu() {
        var pointList = [CGPoint]()
        /// point of contact with Tohoku
        pointList.append(makePoint(x: 322, y: 242))// Yamagata・Niigata
        pointList.append(makePoint(x: 328, y: 249))
        pointList.append(makePoint(x: 325, y: 261))
        pointList.append(makePoint(x: 326, y: 266))// Yamagata・Fukushima・Niigata
        pointList.append(makePoint(x: 321, y: 275))
        pointList.append(makePoint(x: 312, y: 277))
        /// point of contact with Tohoku, Chubu
        pointList.append(makePoint(x: 313, y: 292))//Fukushima・Gunma・Niigata
        //// point of contact with Kanto
        pointList.append(makePoint(x: 308, y: 291))
        pointList.append(makePoint(x: 303, y: 297))
        pointList.append(makePoint(x: 292, y: 306))// Gunma・Nagano・Niigata
        pointList.append(makePoint(x: 298, y: 309))
        pointList.append(makePoint(x: 297, y: 319))
        pointList.append(makePoint(x: 300, y: 321))// Saitama・Gunma・Nagano
        pointList.append(makePoint(x: 297, y: 323))// Saitama・Yamanashi・Nagano
        pointList.append(makePoint(x: 306, y: 327))// Tokyo・Saitama・Yamanashi
        pointList.append(makePoint(x: 312, y: 332))// Kanagawa・Tokyo・Yamanashi
        pointList.append(makePoint(x: 310, y: 334))// Kanagawa・Shizuoka・Yamanashi
        pointList.append(makePoint(x: 305, y: 341))
        pointList.append(makePoint(x: 308, y: 343))
        pointList.append(makePoint(x: 308, y: 350))// Kanagawa・Shizuoka
        pointList.append(makePoint(x: 311, y: 355))
        pointList.append(makePoint(x: 304, y: 365))
        pointList.append(makePoint(x: 300, y: 362))
        pointList.append(makePoint(x: 300, y: 354))
        pointList.append(makePoint(x: 305, y: 351))
        pointList.append(makePoint(x: 297, y: 349))
        pointList.append(makePoint(x: 284, y: 365))
        pointList.append(makePoint(x: 270, y: 364))// Aichi・Shizuoka
        pointList.append(makePoint(x: 258, y: 366))
        pointList.append(makePoint(x: 265, y: 361))
        pointList.append(makePoint(x: 259, y: 360))
        pointList.append(makePoint(x: 256, y: 359))
        pointList.append(makePoint(x: 257, y: 363))
        pointList.append(makePoint(x: 252, y: 360))
        pointList.append(makePoint(x: 253, y: 353))
        pointList.append(makePoint(x: 250, y: 351))// Aichi・Mie
        pointList.append(makePoint(x: 244, y: 363))
        pointList.append(makePoint(x: 254, y: 369))
        pointList.append(makePoint(x: 253, y: 375))
        pointList.append(makePoint(x: 240, y: 378))
        pointList.append(makePoint(x: 239, y: 383))
        /// point of contact with Kinki
        pointList.append(makePoint(x: 231, y: 391))//Wakayama・Mie
        pointList.append(makePoint(x: 228, y: 387))// Wakayama・Mie・Nara
        pointList.append(makePoint(x: 234, y: 381))
        pointList.append(makePoint(x: 233, y: 372))
        pointList.append(makePoint(x: 237, y: 370))
        pointList.append(makePoint(x: 232, y: 361))// Kyoto・Mie・Nara
        pointList.append(makePoint(x: 234, y: 360))// Kyoto・Mie・Shiga
        pointList.append(makePoint(x: 244, y: 347))
        pointList.append(makePoint(x: 242, y: 346))// Gifu・Mie・Shiga
        pointList.append(makePoint(x: 239, y: 333))// Gifu・Fukui・Shiga
        pointList.append(makePoint(x: 228, y: 338))
        pointList.append(makePoint(x: 225, y: 343))// Kyoto・Fukui・Shiga
        pointList.append(makePoint(x: 222, y: 343))
        pointList.append(makePoint(x: 215, y: 339))// Kyoto・Fukui
        pointList.append(makePoint(x: 222, y: 337))
        pointList.append(makePoint(x: 233, y: 330))
        pointList.append(makePoint(x: 228, y: 323))
        pointList.append(makePoint(x: 238, y: 313))// Fukui・Ishikawa
        pointList.append(makePoint(x: 255, y: 290))
        pointList.append(makePoint(x: 249, y: 282))
        pointList.append(makePoint(x: 265, y: 274))
        pointList.append(makePoint(x: 264, y: 281))
        pointList.append(makePoint(x: 258, y: 284))
        pointList.append(makePoint(x: 258, y: 291))// Ishikawa・Toyama
        pointList.append(makePoint(x: 258, y: 297))
        pointList.append(makePoint(x: 266, y: 298))
        pointList.append(makePoint(x: 266, y: 293))
        pointList.append(makePoint(x: 274, y: 291))// Niigata・Toyama
        pointList.append(makePoint(x: 292, y: 282))
        pointList.append(makePoint(x: 302, y: 266))
        pointList.append(makePoint(x: 313, y: 259))
        
        layerChubu = makeLayer(pointList: pointList)
        layer.addSublayer(layerChubu!)
        regionLayers.append(layerChubu!)
        anchorPointList.append(makeCenterPoint(point1: makePoint(x: 322, y: 242),
                                               point2: makePoint(x: 231, y: 391)))
    }
    
    private func drawKinki() {
        var pointList = [CGPoint]()
        // point of contact with Chubu
        pointList.append(makePoint(x: 215, y: 339))// Kyoto・Fukui
        pointList.append(makePoint(x: 222, y: 343))
        pointList.append(makePoint(x: 225, y: 343))// Kyoto・Fukui・Shiga
        pointList.append(makePoint(x: 228, y: 338))
        pointList.append(makePoint(x: 239, y: 333))// Gifu・Fukui・Shiga
        pointList.append(makePoint(x: 242, y: 346))// Gifu・Mie・Shiga
        pointList.append(makePoint(x: 244, y: 347))
        pointList.append(makePoint(x: 234, y: 360))// Kyoto・Mie・Shiga
        pointList.append(makePoint(x: 232, y: 361))// Kyoto・Mie・Nara
        pointList.append(makePoint(x: 237, y: 370))
        pointList.append(makePoint(x: 233, y: 372))
        pointList.append(makePoint(x: 234, y: 381))
        pointList.append(makePoint(x: 228, y: 387))// Wakayama・Mie・Nara
        pointList.append(makePoint(x: 231, y: 391))//Wakayama・Mie
        pointList.append(makePoint(x: 225, y: 401))
        pointList.append(makePoint(x: 216, y: 397))
        pointList.append(makePoint(x: 217, y: 390))
        pointList.append(makePoint(x: 209, y: 385))
        pointList.append(makePoint(x: 209, y: 374))
        pointList.append(makePoint(x: 211, y: 372))//Wakayama・Osaka
        pointList.append(makePoint(x: 217, y: 366))
        pointList.append(makePoint(x: 218, y: 362))//Osaka・Hyogo
        pointList.append(makePoint(x: 212, y: 362))
        pointList.append(makePoint(x: 205, y: 365))
        pointList.append(makePoint(x: 198, y: 360))
        // point of contact with Chugoku
        pointList.append(makePoint(x: 186, y: 360))// Hyogo・Okayama
        pointList.append(makePoint(x: 192, y: 345))// Tottori・Hyogo・Okayama
        pointList.append(makePoint(x: 194, y: 343))
        pointList.append(makePoint(x: 190, y: 334))// Tottori・Hyogo
        pointList.append(makePoint(x: 203, y: 334))//Kyoto・Hyogo
        pointList.append(makePoint(x: 211, y: 329))
        pointList.append(makePoint(x: 215, y: 332))
        pointList.append(makePoint(x: 214, y: 336))
        
        layerKinki = makeLayer(pointList: pointList)
        layer.addSublayer(layerKinki!)
        regionLayers.append(layerKinki!)
        anchorPointList.append(makeCenterPoint(point1: makePoint(x: 215, y: 339),
                                               point2: makePoint(x: 231, y: 391)))
    }
    
    private func drawChugoku() {
        var pointList = [CGPoint]()
        /// point of contact with Kinki
        pointList.append(makePoint(x: 190, y: 334))// Tottori・Hyogo
        pointList.append(makePoint(x: 194, y: 343))
        pointList.append(makePoint(x: 192, y: 345))// Tottori・Hyogo・Okayama
        pointList.append(makePoint(x: 186, y: 360))// Hyogo・Okayama
        pointList.append(makePoint(x: 177, y: 370))
        pointList.append(makePoint(x: 169, y: 368))// Okayama・Hiroshima
        pointList.append(makePoint(x: 166, y: 369))
        pointList.append(makePoint(x: 145, y: 377))
        pointList.append(makePoint(x: 142, y: 371))
        pointList.append(makePoint(x: 139, y: 377))// Hiroshima・Yamaguchi
        pointList.append(makePoint(x: 138, y: 376))
        pointList.append(makePoint(x: 137, y: 383))
        pointList.append(makePoint(x: 131, y: 388))
        pointList.append(makePoint(x: 124, y: 381))
        pointList.append(makePoint(x: 112, y: 385))
        pointList.append(makePoint(x: 104, y: 384))
        pointList.append(makePoint(x: 106, y: 370))
        pointList.append(makePoint(x: 114, y: 372))
        pointList.append(makePoint(x: 123, y: 363))// Shimane・Yamaguchi
        pointList.append(makePoint(x: 147, y: 343))
        pointList.append(makePoint(x: 163, y: 335))
        pointList.append(makePoint(x: 164, y: 338))
        pointList.append(makePoint(x: 165, y: 340))// Tottori・Shimane
        pointList.append(makePoint(x: 170, y: 337))
        pointList.append(makePoint(x: 182, y: 338))
        
        layerChugoku = makeLayer(pointList: pointList)
        layer.addSublayer(layerChugoku!)
        regionLayers.append(layerChugoku!)
        anchorPointList.append(makeCenterPoint(point1: makePoint(x: 194, y: 343),
                                               point2: makePoint(x: 104, y: 384)))
    }
    
    private func drawShikoku() {
        var pointList = [CGPoint]()
        pointList.append(makePoint(x: 184, y: 373))
        pointList.append(makePoint(x: 187, y: 375))
        pointList.append(makePoint(x: 194, y: 377))// Kagawa・Tokushima
        pointList.append(makePoint(x: 197, y: 377))
        pointList.append(makePoint(x: 200, y: 389))
        pointList.append(makePoint(x: 189, y: 397))
        pointList.append(makePoint(x: 188, y: 398))// Tokushima・Kochi
        pointList.append(makePoint(x: 186, y: 406))
        pointList.append(makePoint(x: 178, y: 399))
        pointList.append(makePoint(x: 167, y: 400))
        pointList.append(makePoint(x: 151, y: 421))
        pointList.append(makePoint(x: 146, y: 415))// Kochi・Ehime
        pointList.append(makePoint(x: 143, y: 417))
        pointList.append(makePoint(x: 143, y: 404))
        pointList.append(makePoint(x: 132, y: 403))
        pointList.append(makePoint(x: 148, y: 393))
        pointList.append(makePoint(x: 155, y: 380))
        pointList.append(makePoint(x: 158, y: 385))
        pointList.append(makePoint(x: 172, y: 382))// Kagawa・Ehime
        pointList.append(makePoint(x: 171, y: 375))
        
        layerShikoku = makeLayer(pointList: pointList)
        layer.addSublayer(layerShikoku!)
        regionLayers.append(layerShikoku!)
        anchorPointList.append(makeCenterPoint(point1: makePoint(x: 197, y: 377),
                                               point2: makePoint(x: 143, y: 404)))
    }
    
    private func drawKyushu() {
        var pointList = [CGPoint]()
        pointList.append(makePoint(x: 103, y: 385))
        pointList.append(makePoint(x: 105, y: 391))
        pointList.append(makePoint(x: 111, y: 397))// Fukuoka・Oita
        pointList.append(makePoint(x: 122, y: 393))
        pointList.append(makePoint(x: 127, y: 398))
        pointList.append(makePoint(x: 118, y: 405))
        pointList.append(makePoint(x: 130, y: 407))
        pointList.append(makePoint(x: 133, y: 416))
        pointList.append(makePoint(x: 129, y: 421))// Oita・Miyazaki
        pointList.append(makePoint(x: 124, y: 425))
        pointList.append(makePoint(x: 119, y: 437))
        pointList.append(makePoint(x: 114, y: 462))
        pointList.append(makePoint(x: 110, y: 457))// Miyazaki・Kagoshima
        pointList.append(makePoint(x: 98, y: 472))
        pointList.append(makePoint(x: 98, y: 456))
        pointList.append(makePoint(x: 101, y: 456))
        pointList.append(makePoint(x: 101, y: 450))
        pointList.append(makePoint(x: 97, y: 450))
        pointList.append(makePoint(x: 94, y: 462))
        pointList.append(makePoint(x: 98, y: 467))
        pointList.append(makePoint(x: 83, y: 462))
        pointList.append(makePoint(x: 90, y: 458))
        pointList.append(makePoint(x: 85, y: 450))
        pointList.append(makePoint(x: 84, y: 436))
        pointList.append(makePoint(x: 88, y: 437))// Kumamoto・Kagoshima
        pointList.append(makePoint(x: 89, y: 428))
        pointList.append(makePoint(x: 95, y: 420))
        pointList.append(makePoint(x: 96, y: 414))
        pointList.append(makePoint(x: 93, y: 413))// Kumamoto・Fukuoka
        pointList.append(makePoint(x: 91, y: 411))
        pointList.append(makePoint(x: 88, y: 407))// Fukuoka・Saga
        pointList.append(makePoint(x: 85, y: 415))// Saga・Nagasaki
        pointList.append(makePoint(x: 83, y: 418))
        pointList.append(makePoint(x: 83, y: 419))
        pointList.append(makePoint(x: 85, y: 420))
        pointList.append(makePoint(x: 91, y: 421))
        pointList.append(makePoint(x: 86, y: 426))
        pointList.append(makePoint(x: 85, y: 422))
        pointList.append(makePoint(x: 76, y: 425))
        pointList.append(makePoint(x: 76, y: 420))
        pointList.append(makePoint(x: 72, y: 410))
        pointList.append(makePoint(x: 69, y: 406))
        pointList.append(makePoint(x: 72, y: 402))
        pointList.append(makePoint(x: 76, y: 402))// Saga・Nagasaki
        pointList.append(makePoint(x: 78, y: 397))
        pointList.append(makePoint(x: 83, y: 398))// Fukuoka・Saga
        
        layerKyushu = makeLayer(pointList: pointList)
        layer.addSublayer(layerKyushu!)
        regionLayers.append(layerKyushu!)
        anchorPointList.append(makeCenterPoint(point1: makePoint(x: 103, y: 385),
                                               point2: makePoint(x: 98, y: 472)))
    }
    
    private func drawOkinawa() {
        var pointList = [CGPoint]()
        pointList.append(makePoint(x: 52, y: 469))
        pointList.append(makePoint(x: 52, y: 473))
        pointList.append(makePoint(x: 38, y: 481))
        pointList.append(makePoint(x: 36, y: 490))
        pointList.append(makePoint(x: 32, y: 491))
        pointList.append(makePoint(x: 31, y: 489))
        pointList.append(makePoint(x: 34, y: 481))
        pointList.append(makePoint(x: 42, y: 477))
        pointList.append(makePoint(x: 39, y: 474))
        pointList.append(makePoint(x: 39, y: 473))
        pointList.append(makePoint(x: 42, y: 472))
        pointList.append(makePoint(x: 43, y: 475))
        pointList.append(makePoint(x: 50, y: 468))
        
        layerOkinawa = makeLayer(pointList: pointList)
        layerKyushu?.addSublayer(layerOkinawa!)
        
        layerOkinawaLine = makeLayerOkinawaLine()
        layerOkinawa!.addSublayer(layerOkinawaLine!)
    }
    
    private func makeLayerOkinawaLine() -> CAShapeLayer {
        let linePath = UIBezierPath()
        linePath.move(to: makePoint(x: 21, y: 456))
        linePath.addLine(to: makePoint(x: 62, y: 456))
        linePath.addLine(to: makePoint(x: 62, y: 496))
        
        let layerOkinawaLine = CAShapeLayer()
        layerOkinawaLine.frame = bounds
        layerOkinawaLine.strokeColor = strokeColorOkinawaLine.cgColor
        layerOkinawaLine.fillColor = UIColor.clear.cgColor
        layerOkinawaLine.path = linePath.cgPath
        return layerOkinawaLine
    }
    
    private func clear() {
        anchorPointList.removeAll()
        regionLayers.removeAll()
        layerHokkaido?.removeFromSuperlayer()
        layerTohoku?.removeFromSuperlayer()
        layerKanto?.removeFromSuperlayer()
        layerChubu?.removeFromSuperlayer()
        layerKinki?.removeFromSuperlayer()
        layerChugoku?.removeFromSuperlayer()
        layerShikoku?.removeFromSuperlayer()
        layerKyushu?.removeFromSuperlayer()
        layerOkinawa?.removeFromSuperlayer()
        layerOkinawaLine?.removeFromSuperlayer()
        
        layerHokkaido = nil
        layerTohoku = nil
        layerKanto = nil
        layerChubu = nil
        layerKinki = nil
        layerChugoku = nil
        layerShikoku = nil
        layerKyushu = nil
        layerOkinawa = nil
        layerOkinawaLine = nil
    }
    
    private func makeLayer(pointList: [CGPoint]) -> CAShapeLayer {
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
        return layer
    }
    
    private func makePoint(x: CGFloat, y: CGFloat) -> CGPoint {
        return CGPoint(x: mapSize * (x/500.0), y: mapSize * (y/500.0))
    }
    
    private func makeCenterPoint(point1: CGPoint, point2: CGPoint) -> CGPoint {
        let centerX = (point1.x + point2.x)/2
        let centerY = (point1.y + point2.y)/2
        return CGPoint(x: centerX/frame.width, y: centerY/frame.height)
    }
    
    private func regionLayer(for region: AMJMRegion) -> CAShapeLayer? {
        if region == .none || regionLayers.count == 0 {
            return nil
        }
        return regionLayers[region.rawValue]
    }
    
    //MARK:- Public Method
    public func setStrokeColor(color: UIColor, region: AMJMRegion) {
        guard let layer = regionLayer(for: region) else {
            return
        }
        layer.strokeColor = color.cgColor
        if region == .kyushu {
            layerOkinawa?.strokeColor = color.cgColor
        }
    }
    
    public func setFillColor(color: UIColor, region: AMJMRegion) {
        guard let layer = regionLayer(for: region) else {
            return
        }
        layer.fillColor = color.cgColor
        if region == .kyushu {
            layerOkinawa?.fillColor = color.cgColor
        }
    }
    
    public func setScale(scale: CGFloat, region: AMJMRegion) {
        guard let layer = regionLayer(for: region) else {
            return
        }
        layer.anchorPoint = (scale == 1.0) ? CGPoint(x: 0.5, y: 0.5) : anchorPointList[region.rawValue]
        layer.setAffineTransform(CGAffineTransform(scaleX: scale, y: scale))
    }
}
