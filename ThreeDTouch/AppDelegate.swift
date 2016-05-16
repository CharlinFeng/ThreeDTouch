//
//  AppDelegate.swift
//  ThreeDTouch
//
//  Created by 冯成林 on 16/5/16.
//  Copyright © 2016年 冯成林. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        // Override point for customization after application launch.
        
        let m1 = ThreeDTouchItemModel(title: "消息", subTitle: "发一条消息", imgName: "news", userInfo: nil)
       
        m1.quickAction = {
        
            let vc = UIViewController()
            vc.view.backgroundColor = UIColor.blueColor()
            vc.title = m1.title
            
            let navVC = self.window?.rootViewController as? UINavigationController
            
            print(navVC)
            
            navVC?.pushViewController(vc, animated: true)
        }
        
        
        let m2 = ThreeDTouchItemModel(title: "新建", subTitle: "新建一条说说", imgName: "unfinished", userInfo: nil)
        
        m2.quickAction = {
            
            let vc = UIViewController()
            vc.view.backgroundColor = UIColor.redColor()
            vc.title = m1.title
            
            let navVC = self.window?.rootViewController as? UINavigationController
            
            print(navVC)
            
            navVC?.pushViewController(vc, animated: true)
        }
        
        ThreeDTouch.create([m1,m2])
        
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

