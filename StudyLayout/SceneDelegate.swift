//
//  SceneDelegate.swift
//  StudyLayout
//
//  Created by ishida.a on 2024/01/10.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
            // guard let _　をwindowSceneに書き換え
            guard let windowScene = (scene as? UIWindowScene) else { return }
            //Windowをインスタンス化
            window = UIWindow(windowScene: windowScene)
            //rootViewControllerにStoryboardをHomeViewに指定して初期ビューコントローラーをインスタンス化
            window?.rootViewController = UIStoryboard(name: "UserDefaults", bundle: nil).instantiateInitialViewController()
            //ウィンドウ表示を実行
            window?.makeKeyAndVisible()
        }
}

