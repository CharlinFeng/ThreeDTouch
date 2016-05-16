//
//  PeekPopVC.swift
//  ThreeDTouch
//
//  Created by 冯成林 on 16/5/16.
//  Copyright © 2016年 冯成林. All rights reserved.
//

import UIKit

class PeekVC: UIViewController, UIViewControllerPreviewingDelegate {
    
    private var sourceView: UIView!
    
    var peekVC: UIViewController!
    
    var ucp: UIViewControllerPreviewing!
    
    func peekRegister(sourceView: UIView!){
        
        //记录sourceView
        self.sourceView = sourceView
        
        if #available(iOS 9.0, *) {
            ucp = registerForPreviewingWithDelegate(self, sourceView: sourceView ?? view)
        }
    }
    
    func unregisterPeek(){
        if ucp == nil {return}
        if #available(iOS 9.0, *) {
            unregisterForPreviewingWithContext(ucp)
        }
        peekVC = nil
        sourceView = nil
    }
    
    func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        
        return peekVC
    }
    
    func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController) {
        if peekVC == nil {return}
        if sourceView == nil {return}
        navigationController?.pushViewController(viewControllerToCommit, animated: true)
    }
    
}
