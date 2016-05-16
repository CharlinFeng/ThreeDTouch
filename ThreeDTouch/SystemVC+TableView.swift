//
//  SystemVC+TableView.swift
//  ThreeDTouch
//
//  Created by 冯成林 on 16/5/16.
//  Copyright © 2016年 冯成林. All rights reserved.
//

import UIKit


extension SystemVC: UITableViewDelegate, UITableViewDataSource {

    func tableviewPrepare(){
        
        tableView.delegate = self
        tableView.dataSource = self
        
        for (var i=0; i<20; i++){
            
            dataList.append(String(format: "菜单%d", i))
        }
        
        tableView.reloadData()
        tableView.rowHeight = 50
        tableView.tableFooterView = UIView()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let rid = "rid"
        var cell = tableView.dequeueReusableCellWithIdentifier(rid)
        if cell == nil {
        
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: rid)
        }
        
        cell?.textLabel?.text = dataList[indexPath.row]
        
        let vc = UIViewController()
        
        vc.view.backgroundColor = UIColor.redColor()
        
        vc.title = dataList[indexPath.row]
     
        registerPeek(cell, peekVC: vc)
        
        return cell!
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
    }
    

}