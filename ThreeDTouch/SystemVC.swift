//
//  SystemVC.swift
//  ThreeDTouch
//
//  Created by 冯成林 on 16/5/16.
//  Copyright © 2016年 冯成林. All rights reserved.
//

import UIKit

class SystemVC: PeekVC {
    
    @IBOutlet weak var tableView: UITableView!
    var dataList: [String] = []
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableviewPrepare()
        
    }
    

}
