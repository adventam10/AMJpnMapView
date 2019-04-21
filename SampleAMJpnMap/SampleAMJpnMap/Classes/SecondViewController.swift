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

        detailView.strokeColor = UIColor.clear
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        detailView.setFillColor(color: UIColor.red, prefecture: .hokkaido)
        detailView.setFillColor(color: UIColor.blue, prefecture: .aomori)
        detailView.setFillColor(color: UIColor.purple, prefecture: .iwate)
        detailView.setFillColor(color: UIColor.orange, prefecture: .akita)
        detailView.setFillColor(color: UIColor.yellow, prefecture: .miyagi)
        detailView.setFillColor(color: UIColor.magenta, prefecture: .yamagata)
        detailView.setFillColor(color: UIColor.cyan, prefecture: .fukushima)
        detailView.setFillColor(color: UIColor.brown, prefecture: .ibaraki)
        detailView.setFillColor(color: UIColor.red, prefecture: .chiba)
        detailView.setFillColor(color: UIColor.blue, prefecture: .tochigi)
        detailView.setFillColor(color: UIColor.purple, prefecture: .gunma)
        detailView.setFillColor(color: UIColor.orange, prefecture: .saitama)
        detailView.setFillColor(color: UIColor.yellow, prefecture: .tokyo)
        detailView.setFillColor(color: UIColor.magenta, prefecture: .kanagawa)
        detailView.setFillColor(color: UIColor.blue, prefecture: .niigata)
        detailView.setFillColor(color: UIColor.green, prefecture: .nagano)
        detailView.setFillColor(color: UIColor.red, prefecture: .yamanashi)
        detailView.setFillColor(color: UIColor.blue, prefecture: .shizuoka)
        detailView.setFillColor(color: UIColor.purple, prefecture: .aichi)
        detailView.setFillColor(color: UIColor.orange, prefecture: .mie)
        detailView.setFillColor(color: UIColor.yellow, prefecture: .gifu)
        detailView.setFillColor(color: UIColor.magenta, prefecture: .fukui)
        detailView.setFillColor(color: UIColor.cyan, prefecture: .ishikawa)
        detailView.setFillColor(color: UIColor.brown, prefecture: .toyama)
        detailView.setFillColor(color: UIColor.red, prefecture: .shiga)
        detailView.setFillColor(color: UIColor.blue, prefecture: .kyoto)
        detailView.setFillColor(color: UIColor.purple, prefecture: .hyogo)
        detailView.setFillColor(color: UIColor.cyan, prefecture: .nara)
        detailView.setFillColor(color: UIColor.yellow, prefecture: .wakayama)
        detailView.setFillColor(color: UIColor.magenta, prefecture: .osaka)
        detailView.setFillColor(color: UIColor.cyan, prefecture: .tottori)
        detailView.setFillColor(color: UIColor.brown, prefecture: .okayama)
        detailView.setFillColor(color: UIColor.red, prefecture: .hiroshima)
        detailView.setFillColor(color: UIColor.blue, prefecture: .yamaguchi)
        detailView.setFillColor(color: UIColor.purple, prefecture: .shimane)
        detailView.setFillColor(color: UIColor.orange, prefecture: .kagawa)
        detailView.setFillColor(color: UIColor.yellow, prefecture: .tokushima)
        detailView.setFillColor(color: UIColor.magenta, prefecture: .kochi)
        detailView.setFillColor(color: UIColor.cyan, prefecture: .ehime)
        detailView.setFillColor(color: UIColor.brown, prefecture: .fukuoka)
        detailView.setFillColor(color: UIColor.red, prefecture: .oita)
        detailView.setFillColor(color: UIColor.blue, prefecture: .miyazaki)
        detailView.setFillColor(color: UIColor.purple, prefecture: .kagoshima)
        detailView.setFillColor(color: UIColor.orange, prefecture: .kumamoto)
        detailView.setFillColor(color: UIColor.yellow, prefecture: .saga)
        detailView.setFillColor(color: UIColor.magenta, prefecture: .nagasaki)
        detailView.setFillColor(color: UIColor.cyan, prefecture: .okinawa)
    }
}
