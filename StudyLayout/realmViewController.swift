//
//  realmViewController.swift
//  StudyLayout
//
//  Created by ishida.a on 2024/02/05.
//

import UIKit
import RealmSwift

class realmViewController: UIViewController {
    
    @IBOutlet weak var nameForm: UITextField!
    @IBOutlet weak var ageForm: UITextField!
    @IBOutlet weak var genderForm: UITextField!
    
    // データベースの用意としてインスタンス化
    let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // レルムオブジェクトを取得
        let managementRealm = realm.objects(managementRealm.self)
    }
    
    // レルムにフォームデータを保存する
    @IBAction func addAllFormValueButtonTap(_ sender: Any) {
        // テキストフィールドの値をレルムに保存する
        let managementRealm = managementRealm()
        
        // 名前入力情報取得、保存
        if let name = nameForm.text{
            managementRealm.name = name
        }
        
        // 年齢入力情報取得、保存
        if let age = ageForm.text{
            managementRealm.age = Int(age)!
        }
        
        // 性別入力情報取得、保存
        if let gender = genderForm.text{
            managementRealm.gender = gender
        }
        
        // データベースにフォームの入力値を保存
        try! realm.write{
            realm.add(managementRealm)
        }
    }
}
