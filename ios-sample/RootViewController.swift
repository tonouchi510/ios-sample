//
//  RootViewController.swift
//  ios-sample
//
//  Created by 登内 雅人 on 2019/05/22.
//  Copyright © 2019年 登内 雅人. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private var tableView = UITableView()
    var fruits: NSMutableArray = ["りんご", "みかん", "さくらんぼ", "なし", "すいか"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Configure the page view controller and add it as a child view controller.
    }
    
    // セクションの数
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // セルの数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    // セクション
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?  {
        return "section"
    }
    
    // セルを返す
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // セルにテキストを出力する。
        let cell : CustomCell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        
        // セルに表示する値（ラベルの文字など）を設定する
        cell.NumberLabel!.text = String(indexPath.row + 1)
        cell.CLabel!.text = fruits[indexPath.row] as? String
        
        print(fruits)
        
        return cell
    }
    
    // セルをタップした時に呼ばれる
    func tableView(_ table: UITableView,didSelectRowAt indexPath: IndexPath) {
        print("セルをタップしました")
    }
    
    
    @IBAction func FavoriteButton(_ sender: UIButton) {
    }
    
}
