//
//  UserDefaults.swift
//  StudyLayout
//
//  Created by ishida.a on 2024/01/26.
//

import UIKit

class UserDedaults:UIViewController{
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var Label: UILabel!
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// textFieldの入力値を保存
    @IBAction func Registration(_ sender: Any) {
        let textFieldString = textField.text!
        
        userDefaults.set(textFieldString, forKey: "greetingMessage")
    }
    
    /// 保存した入力値を抽出
    @IBAction func registrationExtraction(_ sender: Any) {
        if let savedString = UserDefaults.standard.string(forKey: "greetingMessage") {
            Label.text = savedString
        }
    }
}
