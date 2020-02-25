//
//  ViewController.swift
//  Color Palette Generator
//
//  Created by Harun Gunes on 24/02/2020.
//  Copyright © 2020 Harun Gunes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstPalette: UIStackView!
    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    @IBOutlet weak var cLabel: UILabel!
    @IBOutlet weak var dLabel: UILabel!
    @IBOutlet weak var eLabel: UILabel!
    
    
    let hexadecimals = ["#171219", "#225560", "#EDF060", "#F0803C", "#310D20", "#ACF39D", "#E85F5C", "#9CFFFA", "#773344", "#E3B5A4", "#C8C8C8", "#B3B3B3", "#BBB891", "#DC965A", "#242325"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
  
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        aLabel.text = hexadecimals.randomElement()
        bLabel.text = hexadecimals.randomElement()
        cLabel.text = hexadecimals.randomElement()
        dLabel.text = hexadecimals.randomElement()
        eLabel.text = hexadecimals.randomElement()
        
    }
    

}

