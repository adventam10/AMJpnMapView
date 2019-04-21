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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        jView3.setFillColor(color: UIColor.blue, region: .hokkaido)
        jView3.setFillColor(color: UIColor.purple, region: .tohoku)
        jView3.setFillColor(color: UIColor.red, region: .kanto)
        jView3.setFillColor(color: UIColor.orange, region: .chubu)
        jView3.setFillColor(color: UIColor.green, region: .kinki)
        jView3.setFillColor(color: UIColor.yellow, region: .chugoku)
        jView3.setFillColor(color: UIColor.magenta, region: .shikoku)
        jView3.setFillColor(color: UIColor.cyan, region: .kyushu)
        
        jView3.setStrokeColor(color: UIColor.clear, region: .hokkaido)
        jView3.setStrokeColor(color: UIColor.clear, region: .tohoku)
        jView3.setStrokeColor(color: UIColor.clear, region: .kanto)
        jView3.setStrokeColor(color: UIColor.clear, region: .chubu)
        jView3.setStrokeColor(color: UIColor.clear, region: .kinki)
        jView3.setStrokeColor(color: UIColor.clear, region: .chugoku)
        jView3.setStrokeColor(color: UIColor.clear, region: .shikoku)
        jView3.setStrokeColor(color: UIColor.clear, region: .kyushu)
    }
}

extension ViewController: AMJpnMapViewDelegate {
    func jpnMapView(_ jpnMapView: AMJpnMapView, didSelectAtRegion region: AMJMRegion) {
        if jpnMapView == jView1 {
            jpnMapView.setStrokeColor(color: UIColor.black, region: region)
            jpnMapView.setScale(scale: 3.0, region: region)
        } else {
            jpnMapView.setFillColor(color: UIColor.red, region: region)
            jpnMapView.setStrokeColor(color: UIColor.red, region: region)
        }
    }
    
    func jpnMapView(_ jpnMapView: AMJpnMapView, didDeselectAtRegion region: AMJMRegion) {
        if jpnMapView == jView1 {
            jpnMapView.setStrokeColor(color: UIColor.green, region: region)
            jpnMapView.setScale(scale: 1.0, region: region)
        } else {
            jpnMapView.setFillColor(color: UIColor.green, region: region)
            jpnMapView.setStrokeColor(color: UIColor.green, region: region)
        }
    }
}
