//
//  ViewController.swift
//  component
//
//  Created by mo on 23/06/1444 AH.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var lableEmail: UILabel!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUserName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtUserName.delegate = self
        txtPassword.delegate = self
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func btnLogin(_ sender: UIButton) {
        lableEmail.text = "Hi";
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == txtUserName {
            txtPassword.becomeFirstResponder()
        } else {
            lableEmail.text = "Done";
            view.endEditing(true)
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.endEditing(true)
        
    }
}
