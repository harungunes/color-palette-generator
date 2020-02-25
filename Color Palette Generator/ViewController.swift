//
//  ViewController.swift
//  Color Palette Generator
//
//  Created by Harun Gunes on 24/02/2020.
//  Copyright © 2020 Harun Gunes. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var firstPalette: UIStackView!
    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    @IBOutlet weak var cLabel: UILabel!
    @IBOutlet weak var dLabel: UILabel!
    @IBOutlet weak var eLabel: UILabel!
    
    
    let hexadecimals = ["#171219", "#225560", "#EDF060", "#F0803C", "#310D20", "#ACF39D", "#E85F5C", "#9CFFFA", "#773344", "#E3B5A4", "#C8C8C8", "#B3B3B3", "#BBB891", "#DC965A", "#242325", "#F8FFE5", "#06D6A0", "#1B9AAA", "#EF476F", "#FFC43D", "#DBC2CF", "#9FA2B2", "#3C7A89", "#2E4756", "#16262E"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
  
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let a = hexadecimals.randomElement()
        aLabel.text = a
        aLabel.backgroundColor = hexStringToUIColor(hex: a!)
        let b = hexadecimals.randomElement()
        bLabel.text = b
        bLabel.backgroundColor = hexStringToUIColor(hex: b!)
        let c = hexadecimals.randomElement()
        cLabel.text = c
        cLabel.backgroundColor = hexStringToUIColor(hex: c!)
        let d = hexadecimals.randomElement()
        dLabel.text = d
        dLabel.backgroundColor = hexStringToUIColor(hex: d!)
        let e = hexadecimals.randomElement()
        eLabel.text = e
        eLabel.backgroundColor = hexStringToUIColor(hex: e!)

    }
    
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        if ((cString.count) != 6) {
            return UIColor.gray
        }

        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)

        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }

}

