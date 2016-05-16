//
//  ThreeDTouch.swift
//  ThreeDTouch
//
//  Created by 冯成林 on 16/5/16.
//  Copyright © 2016年 冯成林. All rights reserved.
//

import UIKit

class ThreeDTouchItemModel {
    var type: String!
    var title: String!
    var subTitle: String!
    var imgName: String!
    var userInfo: [NSObject: AnyObject]!
    var quickAction:(Void->Void)?
    
    
    init(title: String!, subTitle: String!, imgName: String!, userInfo: [NSObject: AnyObject]!){
        self.type = title
        self.title = title
        self.subTitle = subTitle
        self.imgName = imgName
        self.userInfo = userInfo
    }
}

class ThreeDTouch {
    
    static var itemModels:[ThreeDTouchItemModel]?
    
    class func create(ims: [ThreeDTouchItemModel]){
        
        if #available(iOS 9.0, *) {
            
            var items: [UIMutableApplicationShortcutItem]? = []
            
            itemModels = ims
            
            for (_,im) in ims.enumerate(){
                
                let icon = UIApplicationShortcutIcon(templateImageName: im.imgName!)
                let item = UIMutableApplicationShortcutItem(type: im.title, localizedTitle: im.title, localizedSubtitle: im.subTitle, icon: icon, userInfo: im.userInfo)
                items?.append(item)
            }
            
            UIApplication.sharedApplication().shortcutItems = items
        }

    }
}

