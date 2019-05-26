//
//  ViewController.swift
//  ios-sample
//
//  Created by 登内 雅人 on 2019/05/26.
//  Copyright © 2019年 登内 雅人. All rights reserved.
//

import UIKit


class FavoriteViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = "お気に入り一覧"
        
    }

}
