//
//  ViewController.swift
//  UsersList
//
//  Created by 田内　翔太郎 on 2019/08/08.
//  Copyright © 2019 田内　翔太郎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /// 遷移先画面に渡す情報
    var giveName: String = String()
    
    /// 遷移先画面に渡す情報
    var giveHobby: String = String()
    
    // ユーザーリストの情報
    // ユーザーリストの名前一覧
    let nameList: [String] = [
        "永井 優",
        "小野 勇輔",
        "豊岡 正紘",
        "分目 祐太",
        "金田 祐作",
        "甲斐崎 香",
        "志賀 大河",
        "津國 由莉子",
        "中村　泰輔",
        "堀田 真",
        "田内　翔太郎",
        "福沢　貴一",
        "平田　奈那",
        "吉澤　優衣"
    ]
    
    // ユーザーデータの趣味一覧
    let hobbyList: [String] = [
        "音楽が好き。ビジュアル系バンドが好きでバンドを組んでギターを弾いたりした。\n最近の趣味はバイクに乗ることとキックボクシング。",
        "スポーツをすることと釣りが好き\nサッカーと水泳をやっていた。",
        "バックカントリースキーしてみたい！美味しいものたくさん食べたい！スキューバダイビングしたい！深夜特急読みながら同じところ旅したい！",
        "卓球とランニングが好き。\n世界のいろいろな国に行ってみたいです。最近は、フィリピンに行って大好きになった。",
    "小学校二年生から高校3年生までサッカーをしていて、今も趣味でフットサルをしている。\n最近はキックボクシングジムに通い始めたが、細身になりたいので筋トレはあまりしないようにしている。\nライブハウスに音楽を聞きに行くことが好きで、5個上の兄と一緒にライブやフェスに行くことがある。",
        "あだ名はかおりん。18歳 女\n好きなことは旅行と遊び\n友達と遊ぶことが好き。\nカラオケとかめっちゃいくらしい...",
        "バレーボール、サッカー、バスケと運動が全般的に好き。海外旅行などに最近ハマり、特にほかのアジア圏の国への旅行をいっぱいしてみたい。あと料理も好き。",
    "あだ名はゆりちゃん。\n22歳女。\n好きなことはピアノと麻雀とバレエ。\n基本的にインドアで引きこもって家でゲームをしていることが多い。\n夜になると街を徘徊することも多く、その時はお酒を大量に浴びている。\n次の日に、飲み過ぎだと後悔するけど、繰り返してしまうおバカさんです。",
        "サッカー、カラオケ、旅行、食事、飲酒等基本楽しければなんでもいい。\nポンコツという自負を持っている",
        "エレキベースが趣味。高校1年からロックを中心に音楽活動を始める。初めはASIAN KUNG - FU GENERATIONや東京事変などを好みとしていた。大学からは一変し、フュージョンを中心に演奏活動をする。Pat Metheny Group や スナーキー・パピーが好き。",
        "普段は、読書か散歩かアニメを見て過ごしている超インドア。最近は筋トレにもハマりかけている",
        "サッカー好きの脳筋です。\n今の趣味はバイトすること週6でみんな大好きcoffee mafiaで働いてますよ!\nいつでもおいで:mafia:",
        "あだなは、はち(本名:なな)で、東京にくるたびにハチ公に挨拶している。\n弾丸ひとり旅など、突然思い立ったことをやるのが好き。\n「東京生活わくわくしています〜」とのこと",
        "ゲームが大好き。\n特にドラクエをこよなく愛しており、2018年の夏休みは約200時間をドラクエに費やした。\n他にもピアノや海外旅行や読書など様々な趣味がある。"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// ユーザーリストのボタンを押した時の処理
    @IBAction func pushButton(_ sender: UIButton) {
        
        // ボタンのタグを取得
        let tag: Int = sender.tag
        
        // 遷移先に渡す情報を格納していく
        giveName = nameList[tag]
        giveHobby = hobbyList[tag]
        
        // Segue Identifierが"showDetails"のSegueを通って画面遷移
        performSegue(withIdentifier: "showDetails", sender: nil)
    }
    
    /// Segue遷移前動作
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueのidentifierが"showDetails"かどうかの確認＋segueの画面遷移先がSecondViewController型かのViewControllerかどうかの確認
        guard segue.identifier == "showDetails", let nextVC = segue.destination as? SecondViewController else {
            return
        }
        // 遷移先の変数に、渡したい値(ここでは名前と趣味)を代入
        nextVC.receiveName = giveName // 名前を渡す
        nextVC.receiveHobby = giveHobby // 趣味を渡す
    }
    


}

