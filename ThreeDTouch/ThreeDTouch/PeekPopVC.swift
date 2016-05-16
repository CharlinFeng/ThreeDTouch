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
    
    func peekRegister(sourceView: UIView!){
    
        //记录sourceView
        self.sourceView = sourceView
        
        if #available(iOS 9.0, *) {
            registerForPreviewingWithDelegate(self, sourceView: sourceView ?? view)
        }
    }
    
    func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        
        return peekVC
    }
    
    func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController) {
        navigationController?.pushViewController(viewControllerToCommit, animated: true)
    }
    
}
