//
//  DrawerTableViewController.swift
//  KYDrawerControllerSample
//
//  Created by Nabin Khatiwada on 12/11/18.
//  Copyright © 2018 AndroidRagger. All rights reserved.
//

import UIKit

class DrawerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var nabHeader: UIView!
    let arrayTitles = ["Sujin Bhaiya", "Krishna Bhaiya", "Subrat Bhaiya"]
    var icons : [UIImage] = [UIImage(named: "ic_home.png")!, UIImage(named: "ic_home.png")!, UIImage(named: "ic_home.png")!]
    let appDel = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Utils.customizeStatusBarBackground(alpha: 0.1, viewController: self)
        self.tableView.tableFooterView = UIView()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    // MARK: - Table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = arrayTitles[indexPath.row]
        cell?.imageView?.image = icons[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            let screen1 = self.storyboard?.instantiateViewController(withIdentifier: "Screen1") as! ViewController
            appDel.drawerController.mainViewController = screen1
            break
        case 1:
            let screen2 = self.storyboard?.instantiateViewController(withIdentifier: "Screen2") as! ViewController2
            appDel.drawerController.mainViewController = screen2
            break
        default:
            let screen3 = self.storyboard?.instantiateViewController(withIdentifier: "Screen3") as! ViewController3
            appDel.drawerController.mainViewController = screen3
            break
        }
        
        appDel.drawerController.setDrawerState(.closed, animated: true)
        
    }
    
}
