//
//  ViewController.swift
//  SampleAMJpnMap
//
//  Created by am10 on 2018/01/08.
//  Copyright © 2018年 am10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var jView1: AMJpnMapView!
    @IBOutlet weak var jView2: AMJpnMapView!
    @IBOutlet weak var jView3: AMJpnMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        jView1.delegate = self
        jView2.delegate = self
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        jView3.setFillColor(color: .blue, region: .hokkaido)
        jView3.setFillColor(color: .purple, region: .tohoku)
        jView3.setFillColor(color: .red, region: .kanto)
        jView3.setFillColor(color: .orange, region: .chubu)
        jView3.setFillColor(color: .green, region: .kinki)
        jView3.setFillColor(color: .yellow, region: .chugoku)
        jView3.setFillColor(color: .magenta, region: .shikoku)
        jView3.setFillColor(color: .cyan, region: .kyushu)
        
        AMRegion.allCases.forEach { jView3.setStrokeColor(color: .clear, region: $0) }
    }
}

extension ViewController: AMJpnMapViewDelegate {
    func jpnMapView(_ jpnMapView: AMJpnMapView, didSelectAtRegion region: AMRegion) {
        if jpnMapView == jView1 {
            jpnMapView.setStrokeColor(color: .black, region: region)
            jpnMapView.setScale(scale: 3.0, region: region)
        } else {
            jpnMapView.setFillColor(color: .red, region: region)
            jpnMapView.setStrokeColor(color: .red, region: region)
        }
    }
    
    func jpnMapView(_ jpnMapView: AMJpnMapView, didDeselectAtRegion region: AMRegion) {
        if jpnMapView == jView1 {
            jpnMapView.setStrokeColor(color: .green, region: region)
            jpnMapView.setScale(scale: 1.0, region: region)
        } else {
            jpnMapView.setFillColor(color: .green, region: region)
            jpnMapView.setStrokeColor(color: .green, region: region)
        }
    }
}
