//
//  InitialViewController.swift
//  KYDrawerControllerSample
//
//  Created by Nabin Khatiwada on 12/11/18.
//  Copyright © 2018 AndroidRagger. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onOpenDrawerClicked(_ sender: Any) {
        let appDel = UIApplication.shared.delegate as! AppDelegate
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        let mainVc = storyboard.instantiateViewController(withIdentifier: "Screen1")
        let menuVc = storyboard.instantiateViewController(withIdentifier: "Drawer")
        
        appDel.drawerController.mainViewController = mainVc
        appDel.drawerController.drawerViewController = menuVc
        appDel.window?.rootViewController = appDel.drawerController // Change rootView Controller to Drawer Controller to show to the user
        appDel.window?.makeKeyAndVisible() //This is a convenience method to show the current window and position it in front of all other windows at the same level or lower. If you only want to show the window, change its isHidden property to false.
        appDel.drawerController.screenEdgePanGestureEnabled = false
        appDel.drawerController.drawerWidth = self.view.bounds.size.width * 0.75
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
