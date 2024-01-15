//
//  HomeView.swift
//  StudyLayout
//
//  Created by ishida.a on 2024/01/10.
//

import UIKit

class HomeViewController: UIViewController, TransitionButtonCustomViewDelegate {
    @IBOutlet weak var customView: TransitionButtonCustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // デリゲート呼び出し
        customView.delegate = self
    }
    
    /// 画面遷移処理
    func didTapButton(){
        let storyboard = UIStoryboard(name: "NexViewController", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "NexViewControllerID")
        navigationController?.pushViewController(viewController, animated: true)
    }
}
