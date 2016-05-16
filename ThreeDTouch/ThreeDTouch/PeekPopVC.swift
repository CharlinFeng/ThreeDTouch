//
//  PeekPopVC.swift
//  ThreeDTouch
//
//  Created by 冯成林 on 16/5/16.
//  Copyright © 2016年 冯成林. All rights reserved.
//

import UIKit

class PeekVC: UIViewController, UIViewControllerPreviewingDelegate {
    
    private class PeekModel {
    
        var ctx: UIViewControllerPreviewing!
        var peekVC: UIViewController!
        weak var sourceView: UIView!
    }
    
    private var peekModels: [PeekModel] = []
    
    
    
    func registerPeek(sourceView: UIView!, peekVC: UIViewController!){
    
        if #available(iOS 9.0, *) {
            
            let m = PeekModel()
            
            let ctx = registerForPreviewingWithDelegate(self, sourceView: sourceView ?? view)
            
            m.ctx = ctx
            m.peekVC = peekVC
            m.sourceView = sourceView
            
            peekModels.append(m)
        }
    }
    
    
    func unRegisterPeek(sourceView: UIView!){
        
        for (i,pm) in peekModels.enumerate(){
            
            if (pm.sourceView!).isEqual(sourceView){
                
                if #available(iOS 9.0, *) {
                    unregisterForPreviewingWithContext(pm.ctx)
                }
                
                peekModels.removeAtIndex(i)
                break
            }
        }
    }
    
    func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        
        var vc: UIViewController! = nil
        
        for (_,pm) in peekModels.enumerate(){
            
            if (pm.ctx!).isEqual(previewingContext){
            
                vc = pm.peekVC; break
            }
        }
        
        return vc
    }

    func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController) {
        
        var vc: UIViewController! = nil
        var v: UIView! = nil
        
        for (_,pm) in peekModels.enumerate(){
            
            if (pm.ctx!).isEqual(previewingContext){
                
                vc = pm.peekVC;
                v = pm.sourceView
                break
            }
        }
        
        if vc == nil || v == nil {return}
        
        navigationController?.pushViewController(viewControllerToCommit, animated: true)
    }
    
}
