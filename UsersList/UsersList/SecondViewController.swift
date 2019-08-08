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
    // 名前を受け取る
    var receiveName: String = String()
    // 趣味を受け取る
    var receiveHobby: String = String()

    // 名前を表示するラベル
    @IBOutlet weak var nameLabel: UILabel!
    // 趣味を表示するラベル
    @IBOutlet weak var hobbyLabel: UILabel!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 名前を表示するラベルに受け取った名前を表示させる
        nameLabel.text = receiveName
        // 趣味を表示するラベルに受け取った趣味を表示させる
        hobbyLabel.text = receiveHobby
    }
    
}
