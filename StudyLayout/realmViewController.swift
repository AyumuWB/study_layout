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
//        let allRealm = realm.objects(managementRealm.self)
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
    
    // レルムに保存されている情報を取得する
    @IBAction func extractionButtonTap(_ sender: Any) {
        // 全件ユーザ情報を取得
        var userInformation = realm.objects(managementRealm.self)
        
        // ユーザ情報の数を取得
        let dbCount = userInformation.count
        
        // 入力されたユーザ情報からDBデータを一致させて検索を書ける
        for _ in 0 ..< dbCount {
          print("a\(dbCount)")
            
            
        }
        
        
//        print(a[5].name)
    }
}
