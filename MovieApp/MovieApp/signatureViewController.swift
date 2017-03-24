//
//  signatureViewController.swift
//  MovieApp
//
//  Created by 楷岷 張 on 2017/3/24.
//  Copyright © 2017年 楷岷 張. All rights reserved.
//

import UIKit

class signatureViewController: UIViewController {

    @IBOutlet weak var NameTextField: UITextField!
    
//    @IBAction func textField(_ sender: UITextField) {
//        sender.becomeFirstResponder()
//    }
    @IBAction func inputBtn(_ sender: UIButton) {
        inputName()
    }
    
    @IBOutlet weak var nameTextVIew: UITextView!
    
    @IBOutlet weak var alertMessage: UILabel!
    var inputCount = 0
    var textViewSwitch = true
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alertMessage.text = ""
        NameTextField.becomeFirstResponder()
        
        
    }
    
    func inputName() {
        let name = NameTextField.text
        if NameTextField.text == "" {
            alertMessage.text = "名字不能留白"
        } else if inputCount == 3{
            alertMessage.text = "只能簽三筆"
            textViewSwitch = false
            NameTextField.resignFirstResponder()
            NameTextField.text = ""
        } else if NameTextField.text != ""  && textViewSwitch == true{
            if inputCount == 0 {
            nameTextVIew.text = "\(name!)\n"
            alertMessage.text = ""
            NameTextField.text = ""
            inputCount += 1
            }else {
            nameTextVIew.text! += "\(name!)\n"
            alertMessage.text = ""
            NameTextField.text = ""
            inputCount += 1
            }
            
        }
        
        
    }
}
