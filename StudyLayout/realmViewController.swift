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
        
        // データベースの保存内容取得
        let managementRealm = realm.objects(managementRealm.self)
        print("🟥全てのデータ\(managementRealm)")
    }
}
