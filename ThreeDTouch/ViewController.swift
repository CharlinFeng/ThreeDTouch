//
//  ViewController.swift
//  ThreeDTouch
//
//  Created by 冯成林 on 16/5/16.
//  Copyright © 2016年 冯成林. All rights reserved.
//

import UIKit


class ViewController: PeekVC {
    
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = SecVC(nibName: "SecVC", bundle: nil)
        registerPeek(btn, peekVC: vc1)
        
        
        let vc2 = UIViewController()
        vc2.view.backgroundColor = UIColor.redColor()
        registerPeek(btn2, peekVC: vc2)
        
        let vc3 = UIViewController()
        vc3.view.backgroundColor = UIColor.blueColor()
        registerPeek(btn3, peekVC: vc3)

    }

    @IBAction func btnClick(sender: AnyObject) {
        
        print("点击了按钮")
    }
    
    
}

