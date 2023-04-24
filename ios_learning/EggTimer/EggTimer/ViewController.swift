//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    

    @IBAction func btn(_ sender: UIButton) {
        
        let _hardness = sender.currentTitle
        switch _hardness {
        case "Soft":
            print(softTime)
        case "Medium":
            print(mediumTime)
        default:
            print(hardTime)
        }
    }
    
}
