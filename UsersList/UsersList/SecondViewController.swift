//
//  SecondViewController.swift
//  UsersList
//
//  Created by 田内　翔太郎 on 2019/08/08.
//  Copyright © 2019 田内　翔太郎. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    // 遷移元から受け取る情報を入れる変数
    var receiveName: String = String()

    // 名前を表示するラベル
    @IBOutlet weak var nameLabel: UILabel!
    // 趣味を表示するラベル
    @IBOutlet weak var hobbyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
