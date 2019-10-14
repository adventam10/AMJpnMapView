//
//  SecondViewController.swift
//  SampleAMJpnMap
//
//  Created by am10 on 2018/01/20.
//  Copyright © 2018年 am10. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var detailView: AMJpnMapDetailView!
    
    @IBAction private func tappedBackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        detailView.strokeColor = .clear
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        detailView.setFillColor(color: .red, prefecture: .hokkaido)
        detailView.setFillColor(color: .blue, prefecture: .aomori)
        detailView.setFillColor(color: .purple, prefecture: .iwate)
        detailView.setFillColor(color: .orange, prefecture: .akita)
        detailView.setFillColor(color: .yellow, prefecture: .miyagi)
        detailView.setFillColor(color: .magenta, prefecture: .yamagata)
        detailView.setFillColor(color: .cyan, prefecture: .fukushima)
        detailView.setFillColor(color: .brown, prefecture: .ibaraki)
        detailView.setFillColor(color: .red, prefecture: .chiba)
        detailView.setFillColor(color: .blue, prefecture: .tochigi)
        detailView.setFillColor(color: .purple, prefecture: .gunma)
        detailView.setFillColor(color: .orange, prefecture: .saitama)
        detailView.setFillColor(color: .yellow, prefecture: .tokyo)
        detailView.setFillColor(color: .magenta, prefecture: .kanagawa)
        detailView.setFillColor(color: .blue, prefecture: .niigata)
        detailView.setFillColor(color: .green, prefecture: .nagano)
        detailView.setFillColor(color: .red, prefecture: .yamanashi)
        detailView.setFillColor(color: .blue, prefecture: .shizuoka)
        detailView.setFillColor(color: .purple, prefecture: .aichi)
        detailView.setFillColor(color: .orange, prefecture: .mie)
        detailView.setFillColor(color: .yellow, prefecture: .gifu)
        detailView.setFillColor(color: .magenta, prefecture: .fukui)
        detailView.setFillColor(color: .cyan, prefecture: .ishikawa)
        detailView.setFillColor(color: .brown, prefecture: .toyama)
        detailView.setFillColor(color: .red, prefecture: .shiga)
        detailView.setFillColor(color: .blue, prefecture: .kyoto)
        detailView.setFillColor(color: .purple, prefecture: .hyogo)
        detailView.setFillColor(color: .cyan, prefecture: .nara)
        detailView.setFillColor(color: .yellow, prefecture: .wakayama)
        detailView.setFillColor(color: .magenta, prefecture: .osaka)
        detailView.setFillColor(color: .cyan, prefecture: .tottori)
        detailView.setFillColor(color: .brown, prefecture: .okayama)
        detailView.setFillColor(color: .red, prefecture: .hiroshima)
        detailView.setFillColor(color: .blue, prefecture: .yamaguchi)
        detailView.setFillColor(color: .purple, prefecture: .shimane)
        detailView.setFillColor(color: .orange, prefecture: .kagawa)
        detailView.setFillColor(color: .yellow, prefecture: .tokushima)
        detailView.setFillColor(color: .magenta, prefecture: .kochi)
        detailView.setFillColor(color: .cyan, prefecture: .ehime)
        detailView.setFillColor(color: .brown, prefecture: .fukuoka)
        detailView.setFillColor(color: .red, prefecture: .oita)
        detailView.setFillColor(color: .blue, prefecture: .miyazaki)
        detailView.setFillColor(color: .purple, prefecture: .kagoshima)
        detailView.setFillColor(color: .orange, prefecture: .kumamoto)
        detailView.setFillColor(color: .yellow, prefecture: .saga)
        detailView.setFillColor(color: .magenta, prefecture: .nagasaki)
        detailView.setFillColor(color: .cyan, prefecture: .okinawa)
    }
}
