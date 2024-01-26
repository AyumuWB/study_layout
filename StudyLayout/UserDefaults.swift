//
//  UserDefaults.swift
//  StudyLayout
//
//  Created by ishida.a on 2024/01/26.
//

import UIKit

class UserDedaults:UIViewController{
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func Registration(_ sender: Any) {
        let textFieldString = textField.text!
        
        // 保存
        let userDefaults = UserDefaults.standard
        userDefaults.set(textFieldString, forKey: "greetingMessage")

    }
}
