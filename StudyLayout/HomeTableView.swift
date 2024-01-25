//
//  HomeTableView.swift
//  StudyLayout
//
//  Created by ishida.a on 2024/01/16.
//

import UIKit

class HomeTableView: UIViewController,UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // cellの登録
        tableView.register(UINib(nibName: "HomeCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    /// cellの生成
    /// Returns:カスタムcell
    /// Returns:カスタムcellが作れなかった場合、デフォルトcell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as? HomeCustomTableViewCell{
            cell.setup(text: "swift")
            return cell
        }
        
        return UITableViewCell()
    }
}


