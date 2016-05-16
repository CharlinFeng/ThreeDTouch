//
//  ThreeDTouch+AppDelegate.swift
//  ThreeDTouch
//
//  Created by 冯成林 on 16/5/16.
//  Copyright © 2016年 冯成林. All rights reserved.
//

import UIKit

extension AppDelegate {
    

    @available(iOS 9.0, *)
    func application(application: UIApplication, performActionForShortcutItem shortcutItem: UIApplicationShortcutItem, completionHandler: (Bool) -> Void) {
        
        for (_,m) in ThreeDTouch.itemModels!.enumerate(){
            
            if (m.type!) == shortcutItem.type {
                m.quickAction?()
            }
        }
    }

}

