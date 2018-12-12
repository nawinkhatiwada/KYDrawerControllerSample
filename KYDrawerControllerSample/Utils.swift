//
//  Utils.swift
//  KYDrawerControllerSample
//
//  Created by Nabin Khatiwada on 12/11/18.
//  Copyright © 2018 AndroidRagger. All rights reserved.
//

import Foundation
import UIKit

class Utils{
    
//    static func customizeStatusBarBackground(alpha:Float, viewController:UIViewController){
//                let statusBarView = UIView(frame: CGRect(x:0, y:0, width:viewController.view.frame.size.width, height: UIApplication.shared.statusBarFrame.height))
//        statusBarView.backgroundColor = UIColor.red
//        viewController.view.addSubview(statusBarView)
//    }
    
    static func customizeStatusBarBackground(alpha: Float,viewController:UIViewController){
        let statusBarView = UIView(frame: CGRect(x:0, y:0, width:viewController.view.frame.size.width, height: UIApplication.shared.statusBarFrame.height))
        statusBarView.backgroundColor = .red
        statusBarView.alpha = CGFloat(alpha)// set any value between 0 to 1
        viewController.view.addSubview(statusBarView)
    }
}
