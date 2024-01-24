//
//  HomeCustomTableViewCell.swift
//  StudyLayout
//
//  Created by ishida.a on 2024/01/18.
//

import UIKit

class HomeCustomTableViewCell: UITableViewCell {
    @IBOutlet weak private var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // テキストに文字を入れるため
    func setup(text:String) {
        label.text = text
    }
}
