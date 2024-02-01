//
//  TransitionButtonCustomView.swift
//  StudyLayout
//
//  Created by ishida.a on 2024/01/10.
//

import UIKit

protocol TransitionButtonCustomViewDelegate: class{
    func didTapButton()
}

class TransitionButtonCustomView: UIView {
    //デリゲートを宣言
    weak var delegate: TransitionButtonCustomViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        loadNib()
    }

    func loadNib() {
        if let view = Bundle(for: type(of: self)).loadNibNamed(String(describing: type(of: self)), owner: self, options: nil)?.first as? UIView {
            view.frame = self.bounds
            self.addSubview(view)
        }
    }
    
    /// 画面遷移処理
    @IBAction func nextButton(_ sender: UIButton) {
        delegate?.didTapButton()
    }
}
