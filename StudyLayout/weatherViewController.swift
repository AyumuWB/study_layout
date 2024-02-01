//
//  weather.swift
//  StudyLayout
//
//  Created by ishida.a on 2024/01/30.
//

import UIKit
import SwiftyJSON

class weatherViewController: UIViewController {
    // APIのベースURLとAPIキーを設定
    let urlBase = "https://api.openweathermap.org/data/2.5/weather"
    let apiKey = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // パラメータの設定
        let parameters = "?lat=35.6809704&lon=35.6809704&appid=\(apiKey)"
        
        // 完全なURL文字列の作成
        let urlPerfect = urlBase + parameters
        
        // URLの作成
        if let url = URL(string: urlPerfect) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                // エラーチェック
                if let error = error {
                    print("気象データ取得エラー: \(error)")
                    return
                }
                
                // データの存在を確認
                guard let data = data else {
                    print("データ受信なし")
                    return
                }
                
                // JSON解析
                do {
                    // JSONオブジェクトの解析
                    let json = try JSON(data: data)
                    
                    // 天気情報の取得
                    if let weatherDescription = json["weather"][0]["description"].string {
                        print("天気予報: \(weatherDescription)")
                    }
                } catch {
                    print("jsonError", error)
                }
            }.resume() // ネットワークリクエストの開始
        }
    }
}

