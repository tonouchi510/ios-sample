//
//  CustomCell.swift
//  ios-sample
//
//  Created by 登内 雅人 on 2019/05/25.
//  Copyright © 2019年 登内 雅人. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var CLabel: UILabel!
    @IBOutlet weak var CButton: UIButton!
    @IBOutlet weak var NumberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
