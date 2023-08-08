//
//  ViewController.swift
//  OrbitCoordinator
//
//  Created by edo oktarifa on 08/08/2023.
//  Copyright (c) 2023 edo oktarifa. All rights reserved.
//

import UIKit
import React
import OrbitCoordinator

class ViewController: UIViewController {

    var integratingFramework: IntegratingFramework?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func didSelectButton(_ sender: UIButton){
        self.integratingFramework?.navigateTo(urlScheme: "mytelkomsel://orbit/content_details/0_xp5n50sz")
    }

}

