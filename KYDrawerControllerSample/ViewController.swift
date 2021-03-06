//
//  ViewController.swift
//  KYDrawerControllerSample
//
//  Created by Nabin Khatiwada on 12/11/18.
//  Copyright © 2018 AndroidRagger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Utils.customizeStatusBarBackground(alpha: 0.9, viewController: self)
    }

    @IBAction func btnMenuPressed(_ sender: Any) {
        let appDel = UIApplication.shared.delegate as! AppDelegate
        appDel.drawerController.setDrawerState(.opened, animated: true)
    }
}

