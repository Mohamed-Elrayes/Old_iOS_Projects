//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cBttn(_ sender: UIButton) {
        sender.layer.opacity = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            sender.layer.opacity = 1
        }
        
        
        pressBttn(nameBttn: sender.currentTitle!)
    }
    func pressBttn(nameBttn : String){
        
        let url = Bundle.main.url(forResource: nameBttn, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }

    

}

