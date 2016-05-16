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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        peekRegister(btn)
        
        peekVC = SecVC(nibName: "SecVC", bundle: nil)
    }


    
    @IBAction func btnClick(sender: AnyObject) {
        
        print("点击了按钮")
    }
    
    
    


}

