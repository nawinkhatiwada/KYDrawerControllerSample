//
//  ViewController3.swift
//  KYDrawerControllerSample
//
//  Created by Nabin Khatiwada on 12/11/18.
//  Copyright © 2018 AndroidRagger. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        translucentStatusBar()
        Utils.customizeStatusBarBackground(alpha: 0.9, viewController: self)
    }

//    private func translucentStatusBar(){
//        let statusBarView = UIView(frame: CGRect(x:0, y:0, width:view.frame.size.width, height: UIApplication.shared.statusBarFrame.height))
//        statusBarView.backgroundColor = .red
//        statusBarView.alpha = 0.9 // set any value between 0 to 1
//        view.addSubview(statusBarView)
//    }
    
    @IBAction func btnMenuPressed(_ sender: Any) {
        let appDel = UIApplication.shared.delegate as! AppDelegate
        appDel.drawerController.setDrawerState(.opened, animated: true)
        
    }
}
