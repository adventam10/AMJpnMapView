//
//  AMPrefecture.swift
//  AMJpnMap, https://github.com/adventam10/AMJpnMapView
//
//  Created by am10 on 2019/10/14.
//  Copyright © 2019年 am10. All rights reserved.
//

import UIKit

public enum AMPrefecture: CaseIterable {
    case hokkaido
    case aomori
    case iwate
    case akita
    case miyagi
    case yamagata
    case fukushima
    case ibaraki
    case chiba
    case tochigi
    case gunma
    case saitama
    case tokyo
    case kanagawa
    case niigata
    case nagano
    case yamanashi
    case shizuoka
    case aichi
    case mie
    case gifu
    case fukui
    case ishikawa
    case toyama
    case shiga
    case kyoto
    case hyogo
    case nara
    case wakayama
    case osaka
    case tottori
    case okayama
    case hiroshima
    case yamaguchi
    case shimane
    case kagawa
    case tokushima
    case kochi
    case ehime
    case fukuoka
    case oita
    case miyazaki
    case kagoshima
    case kumamoto
    case saga
    case nagasaki
    case okinawa
}

extension AMPrefecture {
    var points: [CGPoint] {
        switch self {
        case .hokkaido:
            var points = [CGPoint]()
            points.append(.init(x: 382, y: 8))
            points.append(.init(x: 414, y: 45))
            points.append(.init(x: 450, y: 64))
            points.append(.init(x: 466, y: 51))
            points.append(.init(x: 461, y: 69))
            points.append(.init(x: 466, y: 83))
            points.append(.init(x: 479, y: 81))
            points.append(.init(x: 450, y: 96))
            points.append(.init(x: 434, y: 96))
            points.append(.init(x: 419, y: 112))
            points.append(.init(x: 413, y: 131))
            points.append(.init(x: 374, y: 105))
            points.append(.init(x: 356, y: 117))
            points.append(.init(x: 348, y: 104))
            points.append(.init(x: 348, y: 107))
            points.append(.init(x: 338, y: 119))
            points.append(.init(x: 345, y: 121))
            points.append(.init(x: 360, y: 134))
            points.append(.init(x: 356, y: 139))
            points.append(.init(x: 350, y: 136))
            points.append(.init(x: 346, y: 140))
            points.append(.init(x: 334, y: 149))
            points.append(.init(x: 336, y: 127))
            points.append(.init(x: 327, y: 119))
            points.append(.init(x: 331, y: 106))
            points.append(.init(x: 345, y: 95))
            points.append(.init(x: 342, y: 83))
            points.append(.init(x: 347, y: 81))
            points.append(.init(x: 369, y: 85))
            points.append(.init(x: 365, y: 68))
            points.append(.init(x: 372, y: 55))
            points.append(.init(x: 378, y: 36))
            points.append(.init(x: 372, y: 13))
            points.append(.init(x: 378, y: 14))
            return points
        case .aomori:
            var points = [CGPoint]()
            points.append(.init(x: 356, y: 145))
            points.append(.init(x: 362, y: 151))
            points.append(.init(x: 371, y: 150))
            points.append(.init(x: 369, y: 172))
            points.append(.init(x: 373, y: 179))// Iwate・Aomori
            points.append(.init(x: 357, y: 184))// Aomori・Iwate・Akita
            points.append(.init(x: 358, y: 182))
            points.append(.init(x: 352, y: 178))
            points.append(.init(x: 345, y: 181))
            points.append(.init(x: 332, y: 180))// Akita・Aomori
            points.append(.init(x: 331, y: 172))
            points.append(.init(x: 339, y: 168))
            points.append(.init(x: 341, y: 154))
            points.append(.init(x: 344, y: 155))
            points.append(.init(x: 349, y: 154))
            points.append(.init(x: 351, y: 168))
            points.append(.init(x: 353, y: 165))
            points.append(.init(x: 355, y: 162))
            points.append(.init(x: 362, y: 166))
            points.append(.init(x: 363, y: 153))
            points.append(.init(x: 352, y: 156))
            return points
        case .iwate:
            var points = [CGPoint]()
            points.append(.init(x: 357, y: 184))// Aomori・Iwate・Akita
            points.append(.init(x: 373, y: 179))// Iwate・Aomori
            points.append(.init(x: 379, y: 184))
            points.append(.init(x: 384, y: 206))
            points.append(.init(x: 378, y: 225))
            points.append(.init(x: 374, y: 230))// Iwate・Miyagi
            points.append(.init(x: 370, y: 230))
            points.append(.init(x: 364, y: 236))
            points.append(.init(x: 360, y: 236))
            points.append(.init(x: 353, y: 231))// Iwate・Miyagi・Akita
            points.append(.init(x: 349, y: 214))
            points.append(.init(x: 353, y: 200))
            return points
        case .akita:
            var points = [CGPoint]()
            points.append(.init(x: 332, y: 180))// Akita・Aomori
            points.append(.init(x: 345, y: 181))
            points.append(.init(x: 352, y: 178))
            points.append(.init(x: 358, y: 182))
            points.append(.init(x: 357, y: 184))// Aomori・Iwate・Akita
            points.append(.init(x: 353, y: 200))
            points.append(.init(x: 349, y: 214))
            points.append(.init(x: 353, y: 231))// Iwate・Miyagi・Akita
            points.append(.init(x: 346, y: 231))// Akita・Yamagata・Miyagi
            points.append(.init(x: 341, y: 225))
            points.append(.init(x: 328, y: 225))// Akita・Yamagata
            points.append(.init(x: 334, y: 207))
            points.append(.init(x: 332, y: 198))
            points.append(.init(x: 325, y: 200))
            points.append(.init(x: 323, y: 196))
            points.append(.init(x: 329, y: 193))
            return points
        case .miyagi:
            var points = [CGPoint]()
            points.append(.init(x: 374, y: 230))// Iwate・Miyagi
            points.append(.init(x: 368, y: 236))
            points.append(.init(x: 369, y: 251))
            points.append(.init(x: 363, y: 247))
            points.append(.init(x: 359, y: 249))
            points.append(.init(x: 356, y: 253))
            points.append(.init(x: 356, y: 263))// Miyagi・Fukushima
            points.append(.init(x: 351, y: 267))
            points.append(.init(x: 340, y: 261))// Miyagi・Fukushima・Yamagata
            points.append(.init(x: 340, y: 258))
            points.append(.init(x: 346, y: 249))
            points.append(.init(x: 346, y: 239))
            points.append(.init(x: 348, y: 235))
            points.append(.init(x: 346, y: 231))// Akita・Yamagata・Miyagi
            return points
        case .yamagata:
            var points = [CGPoint]()
            points.append(.init(x: 328, y: 225))// Akita・Yamagata
            points.append(.init(x: 341, y: 225))
            points.append(.init(x: 346, y: 231))// Akita・Yamagata・Miyagi
            points.append(.init(x: 348, y: 235))
            points.append(.init(x: 346, y: 239))
            points.append(.init(x: 346, y: 249))
            points.append(.init(x: 340, y: 258))
            
            points.append(.init(x: 340, y: 261))// Miyagi・Fukushima・Yamagata
            points.append(.init(x: 338, y: 267))
            points.append(.init(x: 329, y: 266))
            points.append(.init(x: 326, y: 266))// Yamagata・Fukushima・Niigata
            points.append(.init(x: 325, y: 261))
            points.append(.init(x: 328, y: 249))
            points.append(.init(x: 322, y: 242))// Yamagata・Niigata
            points.append(.init(x: 328, y: 230))
            return points
        case .fukushima:
            var points = [CGPoint]()
            points.append(.init(x: 356, y: 263))// Miyagi・Fukushima
            points.append(.init(x: 358, y: 273))
            points.append(.init(x: 355, y: 292))// Fukushima・Ibaraki
            points.append(.init(x: 347, y: 296))
            points.append(.init(x: 346, y: 297))
            points.append(.init(x: 340, y: 296))//Fukushima・Ibaraki・Tochigi
            points.append(.init(x: 337, y: 294))
            points.append(.init(x: 337, y: 290))
            points.append(.init(x: 329, y: 286))
            points.append(.init(x: 321, y: 292))
            points.append(.init(x: 321, y: 292))//Fukushima・Gunma・Tochigi
            points.append(.init(x: 313, y: 292))//Fukushima・Niigata・Gunma
            points.append(.init(x: 312, y: 277))
            points.append(.init(x: 321, y: 275))
            points.append(.init(x: 326, y: 266))// Yamagata・Fukushima・Niigata
            points.append(.init(x: 329, y: 266))
            points.append(.init(x: 338, y: 267))
            points.append(.init(x: 340, y: 261))// Miyagi・Fukushima・Yamagata
            points.append(.init(x: 351, y: 267))
            return points
        case .ibaraki:
            var points = [CGPoint]()
            points.append(.init(x: 340, y: 296))//Fukushima・Ibaraki・Tochigi
            points.append(.init(x: 346, y: 297))
            points.append(.init(x: 347, y: 296))
            points.append(.init(x: 355, y: 292))//Fukushima・Ibaraki
            points.append(.init(x: 345, y: 315))
            points.append(.init(x: 353, y: 331))// Ibaraki・Chiba
            points.append(.init(x: 344, y: 325))
            points.append(.init(x: 338, y: 327))
            points.append(.init(x: 326, y: 320))// Ibaraki・Chiba・Saitama
            points.append(.init(x: 323, y: 317))// Ibaraki・Tochigi・Saitama
            points.append(.init(x: 329, y: 312))
            points.append(.init(x: 338, y: 308))
            return points
        case .chiba:
            var points = [CGPoint]()
            points.append(.init(x: 326, y: 320))// Ibaraki・Chiba・Saitama
            points.append(.init(x: 338, y: 327))
            points.append(.init(x: 344, y: 325))
            points.append(.init(x: 353, y: 331))// Ibaraki・Chiba
            points.append(.init(x: 343, y: 335))
            points.append(.init(x: 343, y: 347))
            points.append(.init(x: 327, y: 355))
            points.append(.init(x: 327, y: 343))
            points.append(.init(x: 334, y: 338))
            points.append(.init(x: 333, y: 333))
            points.append(.init(x: 329, y: 334))// Tokyo・Chiba
            points.append(.init(x: 328, y: 327))// Tokyo・Chiba・Saitama
            return points
        case .tochigi:
            var points = [CGPoint]()
            points.append(.init(x: 321, y: 292))//Fukushima・Gunma・Tochigi
            points.append(.init(x: 329, y: 286))
            points.append(.init(x: 337, y: 290))
            points.append(.init(x: 337, y: 294))
            points.append(.init(x: 340, y: 296))//Fukushima・Ibaraki・Tochigi
            points.append(.init(x: 338, y: 308))
            points.append(.init(x: 329, y: 312))
            points.append(.init(x: 323, y: 317))// Ibaraki・Tochigi・Saitama
            points.append(.init(x: 321, y: 317))//Saitama・Gunma・Tochigi
            points.append(.init(x: 317, y: 311))
            points.append(.init(x: 318, y: 304))
            points.append(.init(x: 314, y: 302))
            return points
        case .gunma:
            var points = [CGPoint]()
            points.append(.init(x: 300, y: 321))// Saitama・Gunma・Nagano
            points.append(.init(x: 297, y: 319))
            points.append(.init(x: 298, y: 309))
            points.append(.init(x: 292, y: 306))// Gunma・Nagano・Niigata
            points.append(.init(x: 303, y: 297))
            points.append(.init(x: 308, y: 291))
            points.append(.init(x: 313, y: 292))//Fukushima・Gunma・Niigata
            points.append(.init(x: 321, y: 292))//Fukushima・Gunma・Tochigi
            points.append(.init(x: 314, y: 302))
            points.append(.init(x: 318, y: 304))
            points.append(.init(x: 317, y: 311))
            points.append(.init(x: 321, y: 317))//Saitama・Gunma・Tochigi
            points.append(.init(x: 311, y: 313))
            points.append(.init(x: 308, y: 317))
            return points
        case .saitama:
            var points = [CGPoint]()
            points.append(.init(x: 300, y: 321))// Saitama・Gunma・Nagano
            points.append(.init(x: 308, y: 317))
            points.append(.init(x: 311, y: 313))
            points.append(.init(x: 321, y: 317))//Saitama・Gunma・Tochigi
            points.append(.init(x: 323, y: 317))// Ibaraki・Tochigi・Saitama
            points.append(.init(x: 326, y: 320))// Ibaraki・Chiba・Saitama
            points.append(.init(x: 328, y: 327))// Tokyo・Chiba・Saitama
            points.append(.init(x: 317, y: 329))
            points.append(.init(x: 310, y: 326))
            points.append(.init(x: 306, y: 327))// Tokyo・Saitama・Yamanashi
            points.append(.init(x: 297, y: 323))// Saitama・Yamanashi・Nagano
            return points
        case .tokyo:
            var points = [CGPoint]()
            points.append(.init(x: 306, y: 327))// Tokyo・Saitama・Yamanashi
            points.append(.init(x: 310, y: 326))
            points.append(.init(x: 317, y: 329))
            points.append(.init(x: 328, y: 327))// Tokyo・Chiba・Saitama
            points.append(.init(x: 329, y: 334))// Tokyo・Chiba
            points.append(.init(x: 327, y: 335))// Tokyo・Kanagawa
            points.append(.init(x: 320, y: 334))
            points.append(.init(x: 320, y: 335))
            points.append(.init(x: 312, y: 332))// Tokyo・Kanagawa・Yamanashi
            return points
        case .kanagawa:
            var points = [CGPoint]()
            points.append(.init(x: 312, y: 332))// Tokyo・Kanagawa・Yamanashi
            points.append(.init(x: 320, y: 335))
            points.append(.init(x: 320, y: 334))
            points.append(.init(x: 327, y: 335))// Tokyo・Kanagawa
            points.append(.init(x: 324, y: 342))
            points.append(.init(x: 326, y: 346))
            points.append(.init(x: 322, y: 349))
            points.append(.init(x: 321, y: 345))
            points.append(.init(x: 312, y: 345))
            points.append(.init(x: 308, y: 350))// Kanagawa・Shizuoka
            points.append(.init(x: 308, y: 343))
            points.append(.init(x: 305, y: 341))
            points.append(.init(x: 310, y: 334))// Kanagawa・Shizuoka・Yamanashi
            return points
        case .niigata:
            var points = [CGPoint]()
            points.append(.init(x: 322, y: 242))// Yamagata・Niigata
            points.append(.init(x: 328, y: 249))
            points.append(.init(x: 325, y: 261))
            points.append(.init(x: 326, y: 266))// Yamagata・Fukushima・Niigata
            points.append(.init(x: 321, y: 275))
            points.append(.init(x: 312, y: 277))
            points.append(.init(x: 313, y: 292))//Fukushima・Gunma・Niigata
            points.append(.init(x: 308, y: 291))
            points.append(.init(x: 303, y: 297))
            points.append(.init(x: 292, y: 306))// Gunma・Nagano・Niigata
            points.append(.init(x: 295, y: 292))
            points.append(.init(x: 285, y: 296))
            points.append(.init(x: 280, y: 294))
            points.append(.init(x: 276, y: 297))// Niigata・Toyama・Nagano
            points.append(.init(x: 274, y: 291))// Niigata・Toyama
            points.append(.init(x: 292, y: 282))
            points.append(.init(x: 302, y: 266))
            points.append(.init(x: 313, y: 259))
            return points
        case .nagano:
            var points = [CGPoint]()
            points.append(.init(x: 273, y: 309))// Nagano・Toyama
            points.append(.init(x: 276, y: 297))// Niigata・Toyama・Nagano
            points.append(.init(x: 280, y: 294))
            points.append(.init(x: 285, y: 296))
            points.append(.init(x: 295, y: 292))
            points.append(.init(x: 292, y: 306))// Gunma・Nagano・Niigata
            points.append(.init(x: 298, y: 309))
            points.append(.init(x: 297, y: 319))
            points.append(.init(x: 300, y: 321))// Saitama・Gunma・Nagano
            points.append(.init(x: 297, y: 323))// Saitama・Yamanashi・Nagano
            points.append(.init(x: 292, y: 324))
            points.append(.init(x: 288, y: 326))
            points.append(.init(x: 288, y: 336))// Nagano・Yamanashi・Shizuoka
            points.append(.init(x: 284, y: 340))
            points.append(.init(x: 276, y: 347))//Nagano・Shizuoka・Aichi
            points.append(.init(x: 270, y: 345))// Nagano・Aichi・Gifu
            points.append(.init(x: 269, y: 333))
            points.append(.init(x: 265, y: 326))
            points.append(.init(x: 271, y: 323))
            points.append(.init(x: 272, y: 310))// Nagano・Gifu・Toyama
            return points
        case .yamanashi:
            var points = [CGPoint]()
            points.append(.init(x: 288, y: 336))// Nagano・Yamanashi・Shizuoka
            points.append(.init(x: 288, y: 326))
            points.append(.init(x: 292, y: 324))
            points.append(.init(x: 297, y: 323))// Saitama・Yamanashi・Nagano
            points.append(.init(x: 306, y: 327))// Tokyo・Saitama・Yamanashi
            points.append(.init(x: 312, y: 332))// Kanagawa・Tokyo・Yamanashi
            points.append(.init(x: 310, y: 334))// Kanagawa・Shizuoka・Yamanashi
            points.append(.init(x: 297, y: 342))
            points.append(.init(x: 294, y: 345))
            points.append(.init(x: 292, y: 347))
            points.append(.init(x: 289, y: 341))
            return points
        case .shizuoka:
            var points = [CGPoint]()
            points.append(.init(x: 310, y: 334))// Kanagawa・Shizuoka・Yamanashi
            points.append(.init(x: 305, y: 341))
            points.append(.init(x: 308, y: 343))
            points.append(.init(x: 308, y: 350))// Kanagawa・Shizuoka
            points.append(.init(x: 311, y: 355))
            points.append(.init(x: 304, y: 365))
            points.append(.init(x: 300, y: 362))
            points.append(.init(x: 300, y: 354))
            points.append(.init(x: 305, y: 351))
            points.append(.init(x: 297, y: 349))
            points.append(.init(x: 284, y: 365))
            points.append(.init(x: 270, y: 364))// Aichi・Shizuoka
            points.append(.init(x: 268, y: 358))
            points.append(.init(x: 276, y: 347))//Nagano・Shizuoka・Aichi
            points.append(.init(x: 284, y: 340))
            points.append(.init(x: 288, y: 336))// Nagano・Yamanashi・Shizuoka
            points.append(.init(x: 289, y: 341))
            points.append(.init(x: 292, y: 347))
            points.append(.init(x: 294, y: 345))
            points.append(.init(x: 297, y: 342))
            return points
        case .aichi:
            var points = [CGPoint]()
            points.append(.init(x: 270, y: 345))// Nagano・Aichi・Gifu
            points.append(.init(x: 276, y: 347))//Nagano・Shizuoka・Aichi
            points.append(.init(x: 268, y: 358))
            points.append(.init(x: 270, y: 364))// Aichi・Shizuoka
            points.append(.init(x: 258, y: 366))
            points.append(.init(x: 265, y: 361))
            points.append(.init(x: 259, y: 360))
            points.append(.init(x: 256, y: 359))
            points.append(.init(x: 257, y: 363))
            points.append(.init(x: 252, y: 360))
            points.append(.init(x: 253, y: 353))
            points.append(.init(x: 250, y: 351))// Aichi・Mie
            points.append(.init(x: 249, y: 347))// Aichi・Mie・Gifu
            points.append(.init(x: 251, y: 342))
            points.append(.init(x: 255, y: 341))
            points.append(.init(x: 262, y: 344))
            return points
        case .mie:
            var points = [CGPoint]()
            points.append(.init(x: 249, y: 347))// Aichi・Mie・Gifu
            points.append(.init(x: 250, y: 351))// Aichi・Mie
            points.append(.init(x: 244, y: 363))
            points.append(.init(x: 254, y: 369))
            points.append(.init(x: 253, y: 375))
            points.append(.init(x: 240, y: 378))
            points.append(.init(x: 239, y: 383))
            points.append(.init(x: 231, y: 391))//Wakayama・Mie
            points.append(.init(x: 228, y: 387))// Wakayama・Mie・Nara
            points.append(.init(x: 234, y: 381))
            points.append(.init(x: 233, y: 372))
            points.append(.init(x: 237, y: 370))
            points.append(.init(x: 232, y: 361))// Kyoto・Mie・Nara
            points.append(.init(x: 234, y: 360))// Kyoto・Mie・Shiga
            points.append(.init(x: 244, y: 347))
            points.append(.init(x: 242, y: 346))// Gifu・Mie・Shiga
            return points
        case .gifu:
            var points = [CGPoint]()
            points.append(.init(x: 272, y: 310))// Nagano・Gifu・Toyama
            points.append(.init(x: 271, y: 323))
            points.append(.init(x: 265, y: 326))
            points.append(.init(x: 269, y: 333))
            points.append(.init(x: 270, y: 345))// Nagano・Aichi・Gifu
            points.append(.init(x: 262, y: 344))
            points.append(.init(x: 255, y: 341))
            points.append(.init(x: 251, y: 342))
            points.append(.init(x: 249, y: 347))// Aichi・Mie・Gifu
            points.append(.init(x: 242, y: 346))// Gifu・Mie・Shiga
            points.append(.init(x: 239, y: 333))// Gifu・Fukui・Shiga
            points.append(.init(x: 242, y: 330))
            points.append(.init(x: 251, y: 327))
            points.append(.init(x: 249, y: 321))
            points.append(.init(x: 250, y: 317))// Gifu・Fukui・Ishikawa
            points.append(.init(x: 252, y: 310))// Gifu・Toyama・Ishikawa
            points.append(.init(x: 258, y: 313))
            points.append(.init(x: 261, y: 309))
            return points
        case .fukui:
            var points = [CGPoint]()
            points.append(.init(x: 238, y: 313))// Fukui・Ishikawa
            points.append(.init(x: 244, y: 317))
            points.append(.init(x: 250, y: 317))// Gifu・Fukui・Ishikawa
            points.append(.init(x: 249, y: 321))
            points.append(.init(x: 251, y: 327))
            points.append(.init(x: 242, y: 330))
            points.append(.init(x: 239, y: 333))// Gifu・Fukui・Shiga
            points.append(.init(x: 228, y: 338))
            points.append(.init(x: 225, y: 343))// Kyoto・Fukui・Shiga
            points.append(.init(x: 222, y: 343))
            points.append(.init(x: 215, y: 339))// Kyoto・Fukui
            points.append(.init(x: 222, y: 337))
            points.append(.init(x: 233, y: 330))
            points.append(.init(x: 228, y: 323))
            return points
        case .ishikawa:
            var points = [CGPoint]()
            points.append(.init(x: 238, y: 313))// Fukui・Ishikawa
            points.append(.init(x: 255, y: 290))
            points.append(.init(x: 249, y: 282))
            points.append(.init(x: 265, y: 274))
            points.append(.init(x: 264, y: 281))
            points.append(.init(x: 258, y: 284))
            points.append(.init(x: 258, y: 291))// Ishikawa・Toyama
            points.append(.init(x: 254, y: 296))
            points.append(.init(x: 252, y: 310))// Gifu・Toyama・Ishikawa
            points.append(.init(x: 250, y: 317))// Gifu・Fukui・Ishikawa
            points.append(.init(x: 244, y: 317))
            return points
        case .toyama:
            var points = [CGPoint]()
            points.append(.init(x: 258, y: 291))// Ishikawa・Toyama
            points.append(.init(x: 258, y: 297))
            points.append(.init(x: 266, y: 298))
            points.append(.init(x: 266, y: 293))
            points.append(.init(x: 274, y: 291))// Niigata・Toyama
            points.append(.init(x: 276, y: 297))// Niigata・Toyama・Nagano
            points.append(.init(x: 272, y: 310))// Nagano・Gifu・Toyama
            points.append(.init(x: 261, y: 309))
            points.append(.init(x: 258, y: 313))
            points.append(.init(x: 252, y: 310))// Gifu・Toyama・Ishikawa
            points.append(.init(x: 254, y: 296))
            return points
        case .shiga:
            var points = [CGPoint]()
            points.append(.init(x: 225, y: 343))// Kyoto・Fukui・Shiga
            points.append(.init(x: 228, y: 338))
            points.append(.init(x: 239, y: 333))// Gifu・Fukui・Shiga
            points.append(.init(x: 242, y: 346))// Gifu・Mie・Shiga
            points.append(.init(x: 244, y: 347))
            points.append(.init(x: 234, y: 360))// Kyoto・Mie・Shiga
            points.append(.init(x: 229, y: 353))
            return points
        case .kyoto:
            var points = [CGPoint]()
            points.append(.init(x: 215, y: 339))// Kyoto・Fukui
            points.append(.init(x: 222, y: 343))
            points.append(.init(x: 225, y: 343))// Kyoto・Fukui・Shiga
            points.append(.init(x: 229, y: 353))
            points.append(.init(x: 234, y: 360))// Kyoto・Mie・Shiga
            points.append(.init(x: 232, y: 361))// Kyoto・Mie・Nara
            points.append(.init(x: 225, y: 360))// Kyoto・Osaka・Nara
            points.append(.init(x: 225, y: 355))// Kyoto・Osaka・Hyogo
            points.append(.init(x: 217, y: 349))
            points.append(.init(x: 204, y: 342))
            points.append(.init(x: 208, y: 337))
            points.append(.init(x: 203, y: 334))//Kyoto・Hyogo
            points.append(.init(x: 211, y: 329))
            points.append(.init(x: 215, y: 332))
            points.append(.init(x: 214, y: 336))
            return points
        case .hyogo:
            var points = [CGPoint]()
            points.append(.init(x: 190, y: 334))// Tottori・Hyogo
            points.append(.init(x: 203, y: 334))//Kyoto・Hyogo
            points.append(.init(x: 208, y: 337))
            points.append(.init(x: 204, y: 342))
            points.append(.init(x: 217, y: 349))
            points.append(.init(x: 225, y: 355))// Kyoto・Osaka・Hyogo
            points.append(.init(x: 218, y: 362))//Osaka・Hyogo
            points.append(.init(x: 212, y: 362))
            points.append(.init(x: 205, y: 365))
            points.append(.init(x: 198, y: 360))
            points.append(.init(x: 186, y: 360))// Hyogo・Okayama
            points.append(.init(x: 192, y: 345))// Tottori・Hyogo・Okayama
            points.append(.init(x: 194, y: 343))
            return points
        case .nara:
            var points = [CGPoint]()
            points.append(.init(x: 232, y: 361))// Kyoto・Mie・Nara
            points.append(.init(x: 237, y: 370))
            points.append(.init(x: 233, y: 372))
            points.append(.init(x: 234, y: 381))
            points.append(.init(x: 228, y: 387))// Wakayama・Mie・Nara
            points.append(.init(x: 225, y: 387))
            points.append(.init(x: 220, y: 381))
            points.append(.init(x: 225, y: 376))
            points.append(.init(x: 225, y: 372))// Wakayama・Osaka・Nara
            points.append(.init(x: 225, y: 360))// Kyoto・Osaka・Nara
            return points
        case .wakayama:
            var points = [CGPoint]()
            points.append(.init(x: 211, y: 372))//Wakayama・Osaka
            points.append(.init(x: 225, y: 372))// Wakayama・Osaka・Nara
            points.append(.init(x: 225, y: 376))
            points.append(.init(x: 220, y: 381))
            points.append(.init(x: 225, y: 387))
            points.append(.init(x: 228, y: 387))// Wakayama・Mie・Nara
            points.append(.init(x: 231, y: 391))//Wakayama・Mie
            points.append(.init(x: 225, y: 401))
            points.append(.init(x: 216, y: 397))
            points.append(.init(x: 217, y: 390))
            points.append(.init(x: 209, y: 385))
            points.append(.init(x: 209, y: 374))
            return points
        case .osaka:
            var points = [CGPoint]()
            points.append(.init(x: 225, y: 355))// Kyoto・Osaka・Hyogo
            points.append(.init(x: 225, y: 360))// Kyoto・Osaka・Nara
            points.append(.init(x: 225, y: 372))// Wakayama・Osaka・Nara
            points.append(.init(x: 211, y: 372))//Wakayama・Osaka
            points.append(.init(x: 217, y: 366))
            points.append(.init(x: 218, y: 362))//Osaka・Hyogo
            return points
        case .tottori:
            var points = [CGPoint]()
            points.append(.init(x: 165, y: 340))// Tottori・Shimane
            points.append(.init(x: 170, y: 337))
            points.append(.init(x: 182, y: 338))
            points.append(.init(x: 190, y: 334))// Tottori・Hyogo
            points.append(.init(x: 194, y: 343))
            points.append(.init(x: 192, y: 345))// Tottori・Hyogo・Okayama
            points.append(.init(x: 185, y: 346))
            points.append(.init(x: 178, y: 345))
            points.append(.init(x: 170, y: 343))
            points.append(.init(x: 164, y: 351))// Tottori・Hiroshima・Okayama
            points.append(.init(x: 159, y: 349))// Tottori・Hiroshima・Shimane
            points.append(.init(x: 164, y: 342))
            return points
        case .okayama:
            var points = [CGPoint]()
            points.append(.init(x: 192, y: 345))// Tottori・Hyogo・Okayama
            points.append(.init(x: 186, y: 360))// Hyogo・Okayama
            points.append(.init(x: 177, y: 370))
            points.append(.init(x: 169, y: 368))// Okayama・Hiroshima
            points.append(.init(x: 165, y: 358))
            points.append(.init(x: 164, y: 351))// Tottori・Hiroshima・Okayama
            points.append(.init(x: 170, y: 343))
            points.append(.init(x: 178, y: 345))
            points.append(.init(x: 185, y: 346))
            return points
        case .hiroshima:
            var points = [CGPoint]()
            points.append(.init(x: 159, y: 349))// Tottori・Hiroshima・Shimane
            points.append(.init(x: 164, y: 351))// Tottori・Hiroshima・Okayama
            points.append(.init(x: 165, y: 358))
            points.append(.init(x: 169, y: 368))// Okayama・Hiroshima
            points.append(.init(x: 166, y: 369))
            points.append(.init(x: 145, y: 377))
            points.append(.init(x: 142, y: 371))
            points.append(.init(x: 139, y: 377))// Hiroshima・Yamaguchi
            points.append(.init(x: 136, y: 374))
            points.append(.init(x: 133, y: 370))// Hiroshima・Yamaguchi・Shimane
            points.append(.init(x: 138, y: 360))
            points.append(.init(x: 147, y: 357))
            points.append(.init(x: 152, y: 350))
            return points
        case .yamaguchi:
            var points = [CGPoint]()
            points.append(.init(x: 133, y: 370))// Hiroshima・Yamaguchi・Shimane
            points.append(.init(x: 136, y: 374))
            points.append(.init(x: 139, y: 377))// Hiroshima・Yamaguchi
            points.append(.init(x: 138, y: 376))
            points.append(.init(x: 137, y: 383))
            points.append(.init(x: 131, y: 388))
            points.append(.init(x: 124, y: 381))
            points.append(.init(x: 112, y: 385))
            points.append(.init(x: 104, y: 384))
            points.append(.init(x: 106, y: 370))
            points.append(.init(x: 114, y: 372))
            points.append(.init(x: 123, y: 363))// Shimane・Yamaguchi
            points.append(.init(x: 123, y: 369))
            points.append(.init(x: 129, y: 374))
            return points
        case .shimane:
            var points = [CGPoint]()
            points.append(.init(x: 123, y: 363))// Shimane・Yamaguchi
            points.append(.init(x: 147, y: 343))
            points.append(.init(x: 163, y: 335))
            points.append(.init(x: 164, y: 338))
            points.append(.init(x: 165, y: 340))// Tottori・Shimane
            points.append(.init(x: 164, y: 342))
            points.append(.init(x: 159, y: 349))// Tottori・Hiroshima・Shimane
            points.append(.init(x: 152, y: 350))
            points.append(.init(x: 147, y: 357))
            points.append(.init(x: 138, y: 360))
            points.append(.init(x: 133, y: 370))// Hiroshima・Yamaguchi・Shimane
            points.append(.init(x: 129, y: 374))
            points.append(.init(x: 123, y: 369))
            return points
        case .kagawa:
            var points = [CGPoint]()
            points.append(.init(x: 172, y: 382))// Kagawa・Ehime
            points.append(.init(x: 171, y: 375))
            points.append(.init(x: 184, y: 373))
            points.append(.init(x: 187, y: 375))
            points.append(.init(x: 194, y: 377))// Kagawa・Tokushima
            points.append(.init(x: 182, y: 380))
            points.append(.init(x: 174, y: 384))// Kagawa・Tokushima・Ehime
            return points
        case .tokushima:
            var points = [CGPoint]()
            points.append(.init(x: 194, y: 377))// Kagawa・Tokushima
            points.append(.init(x: 197, y: 377))
            points.append(.init(x: 200, y: 389))
            points.append(.init(x: 189, y: 397))
            points.append(.init(x: 188, y: 398))// Tokushima・Kochi
            points.append(.init(x: 181, y: 390))
            points.append(.init(x: 173, y: 388))// Tokushima・Kochi・Ehime
            points.append(.init(x: 174, y: 384))// Kagawa・Tokushima・Ehime
            points.append(.init(x: 182, y: 380))
            return points
        case .kochi:
            var points = [CGPoint]()
            points.append(.init(x: 173, y: 388))// Tokushima・Kochi・Ehime
            points.append(.init(x: 181, y: 390))
            points.append(.init(x: 188, y: 398))// Tokushima・Kochi
            points.append(.init(x: 186, y: 406))
            points.append(.init(x: 178, y: 399))
            points.append(.init(x: 167, y: 400))
            points.append(.init(x: 151, y: 421))
            points.append(.init(x: 146, y: 415))// Kochi・Ehime
            points.append(.init(x: 154, y: 400))
            points.append(.init(x: 162, y: 390))
            return points
        case .ehime:
            var points = [CGPoint]()
            points.append(.init(x: 172, y: 382))// Kagawa・Ehime
            points.append(.init(x: 174, y: 384))// Kagawa・Tokushima・Ehime
            points.append(.init(x: 173, y: 388))// Tokushima・Kochi・Ehime
            points.append(.init(x: 162, y: 390))
            points.append(.init(x: 154, y: 400))
            points.append(.init(x: 146, y: 415))// Kochi・Ehime
            points.append(.init(x: 143, y: 417))
            points.append(.init(x: 143, y: 404))
            points.append(.init(x: 132, y: 403))
            points.append(.init(x: 148, y: 393))
            points.append(.init(x: 155, y: 380))
            points.append(.init(x: 158, y: 385))
            return points
        case .fukuoka:
            var points = [CGPoint]()
            points.append(.init(x: 111, y: 397))// Fukuoka・Oita
            points.append(.init(x: 103, y: 401))
            points.append(.init(x: 104, y: 410))// Fukuoka・Oita・Kumamoto
            points.append(.init(x: 93, y: 413))// Kumamoto・Fukuoka
            points.append(.init(x: 91, y: 411))
            points.append(.init(x: 88, y: 407))// Fukuoka・Saga
            points.append(.init(x: 95, y: 401))
            points.append(.init(x: 83, y: 398))// Fukuoka・Saga
            points.append(.init(x: 103, y: 385))
            points.append(.init(x: 105, y: 391))
            return points
        case .oita:
            var points = [CGPoint]()
            points.append(.init(x: 111, y: 397))// Fukuoka・Oita
            points.append(.init(x: 122, y: 393))
            points.append(.init(x: 127, y: 398))
            points.append(.init(x: 118, y: 405))
            points.append(.init(x: 130, y: 407))
            points.append(.init(x: 133, y: 416))
            points.append(.init(x: 129, y: 421))// Oita・Miyazaki
            points.append(.init(x: 114, y: 418))// Oita・Miyazaki・Kumamoto
            points.append(.init(x: 110, y: 409))
            points.append(.init(x: 108, y: 408))
            points.append(.init(x: 108, y: 412))
            points.append(.init(x: 104, y: 410))// Fukuoka・Oita・Kumamoto
            points.append(.init(x: 103, y: 401))
            points.append(.init(x: 111, y: 397))// Fukuoka・Oita
            return points
        case .miyazaki:
            var points = [CGPoint]()
            points.append(.init(x: 114, y: 418))// Oita・Miyazaki・Kumamoto
            points.append(.init(x: 129, y: 421))// Oita・Miyazaki
            points.append(.init(x: 124, y: 425))
            points.append(.init(x: 119, y: 437))
            points.append(.init(x: 114, y: 462))
            points.append(.init(x: 110, y: 457))// Miyazaki・Kagoshima
            points.append(.init(x: 111, y: 455))
            points.append(.init(x: 104, y: 450))
            points.append(.init(x: 100, y: 442))// Miyazaki・Kagoshima・Kumamoto
            points.append(.init(x: 110, y: 436))
            points.append(.init(x: 107, y: 428))
            return points
        case .kagoshima:
            var points = [CGPoint]()
            points.append(.init(x: 100, y: 442))// Miyazaki・Kagoshima・Kumamoto
            points.append(.init(x: 104, y: 450))
            points.append(.init(x: 111, y: 455))
            points.append(.init(x: 110, y: 457))// Miyazaki・Kagoshima
            points.append(.init(x: 98, y: 472))
            points.append(.init(x: 98, y: 456))
            points.append(.init(x: 101, y: 456))
            points.append(.init(x: 101, y: 450))
            points.append(.init(x: 97, y: 450))
            points.append(.init(x: 94, y: 462))
            points.append(.init(x: 98, y: 467))
            points.append(.init(x: 83, y: 462))
            points.append(.init(x: 90, y: 458))
            points.append(.init(x: 85, y: 450))
            points.append(.init(x: 84, y: 436))
            points.append(.init(x: 88, y: 437))// Kumamoto・Kagoshima
            points.append(.init(x: 95, y: 437))
            return points
        case .kumamoto:
            var points = [CGPoint]()
            points.append(.init(x: 93, y: 413))// Kumamoto・Fukuoka
            points.append(.init(x: 104, y: 410))// Fukuoka・Oita・Kumamoto
            points.append(.init(x: 108, y: 412))
            points.append(.init(x: 108, y: 408))
            points.append(.init(x: 110, y: 409))
            points.append(.init(x: 114, y: 418))// Oita・Miyazaki・Kumamoto
            points.append(.init(x: 107, y: 428))
            points.append(.init(x: 110, y: 436))
            points.append(.init(x: 100, y: 442))// Miyazaki・Kagoshima・Kumamoto
            points.append(.init(x: 95, y: 437))
            points.append(.init(x: 88, y: 437))// Kumamoto・Kagoshima
            points.append(.init(x: 89, y: 428))
            points.append(.init(x: 95, y: 420))
            points.append(.init(x: 96, y: 414))
            return points
        case .saga:
            var points = [CGPoint]()
            points.append(.init(x: 76, y: 402))// Saga・Nagasaki
            points.append(.init(x: 78, y: 397))
            points.append(.init(x: 83, y: 398))// Fukuoka・Saga
            points.append(.init(x: 95, y: 401))
            points.append(.init(x: 88, y: 407))// Fukuoka・Saga
            points.append(.init(x: 85, y: 415))// Saga・Nagasaki
            return points
        case .nagasaki:
            var points = [CGPoint]()
            points.append(.init(x: 76, y: 402))// Saga・Nagasaki
            points.append(.init(x: 85, y: 415))// Saga・Nagasaki
            points.append(.init(x: 83, y: 418))
            points.append(.init(x: 83, y: 419))
            points.append(.init(x: 85, y: 420))
            points.append(.init(x: 91, y: 421))
            points.append(.init(x: 86, y: 426))
            points.append(.init(x: 85, y: 422))
            points.append(.init(x: 76, y: 425))
            points.append(.init(x: 76, y: 420))
            points.append(.init(x: 72, y: 410))
            points.append(.init(x: 69, y: 406))
            points.append(.init(x: 72, y: 402))
            return points
        case .okinawa:
            var points = [CGPoint]()
            points.append(.init(x: 52, y: 469))
            points.append(.init(x: 52, y: 473))
            points.append(.init(x: 38, y: 481))
            points.append(.init(x: 36, y: 490))
            points.append(.init(x: 32, y: 491))
            points.append(.init(x: 31, y: 489))
            points.append(.init(x: 34, y: 481))
            points.append(.init(x: 42, y: 477))
            points.append(.init(x: 39, y: 474))
            points.append(.init(x: 39, y: 473))
            points.append(.init(x: 42, y: 472))
            points.append(.init(x: 43, y: 475))
            points.append(.init(x: 50, y: 468))
            return points
        }
    }
    
    var okinawaLinePoints: [CGPoint] {
        if self != .okinawa {
            return []
        }
        return [.init(x: 21, y: 456), .init(x: 62, y: 456), .init(x: 62, y: 496)]
    }
}
