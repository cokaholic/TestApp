//
//  ViewController.swift
//  TestApp
//
//  Created by 辰己佳祐 on 2018/04/04.
//  Copyright © 2018年 cokaholic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // ボタンの背景色を黒色に設定
        button.backgroundColor = .black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(_ sender: Any) {

        // `Main.storyboard`から`SecondViewController`を取得
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let storyboardID = "SecondViewController"
        let secondVC = storyboard.instantiateViewController(withIdentifier: storyboardID)

        // 別の画面へ遷移したことがわかりやすいよう、画面の背景色を青に変更
        secondVC.view.backgroundColor = .blue

        // `SecondViewController`へ画面遷移
        self.present(secondVC, animated: true)
    }
}

