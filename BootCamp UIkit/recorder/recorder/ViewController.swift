//
//  ViewController.swift
//  recorder
//
//  Created by mo on 08/07/1444 AH.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioRecorder: AVAudioRecorder!

    @IBOutlet weak var recordBtn: UIButton!
    
    @IBOutlet weak var status: UILabel!
    
    @IBOutlet weak var stopBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        stopBtn.isEnabled = false
        status.text = "Tap To Recording"
    }
    @IBAction func recording(_ sender: Any) {
        stopBtn.isEnabled = false
        status.text = "Recording....."
        recordBtn.isEnabled = true
        
    }
    
    @IBAction func stoping(_ sender: Any) {
        stopBtn.isEnabled = true
        status.text = "Tap To Recording"
        recordBtn.isEnabled = false
    }
    
}

