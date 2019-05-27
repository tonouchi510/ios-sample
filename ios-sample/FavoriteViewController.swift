//
//  ViewController.swift
//  ios-sample
//
//  Created by 登内 雅人 on 2019/05/26.
//  Copyright © 2019年 登内 雅人. All rights reserved.
//

import UIKit
import Firebase

class FavoriteViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var favList: [String] = ["りんご"]
    var db: Firestore!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self

        titleLabel.text = "お気に入り一覧"
        db = Firestore.firestore()
        
        let docRef = db.collection("fruits").document("ほげほげ")
        
        docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let vs = document["name"] ?? ""
                self.favList.append(contentsOf: vs as! [String])
                print(self.favList)
                self.tableView.reloadData()
            } else {
                print("Document does not exist")
            }
        }
        
    }
    
    // セクションの数
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // セルの数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favList.count
    }
    
    // セクション
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?  {
        return "section"
    }
    
    // セルを返す
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = favList[indexPath.row]
        
        return cell
    }
    
    // セルをタップした時に呼ばれる
    func tableView(_ table: UITableView,didSelectRowAt indexPath: IndexPath) {
        print("セルをタップしました")
    }
    
}
