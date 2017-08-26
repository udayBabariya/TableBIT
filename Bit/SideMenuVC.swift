//
//  SideMenuVC.swift
//  Bit
//
//  Created by uday on 8/25/17.
//  Copyright © 2017 D_Developer. All rights reserved.
//

import UIKit

class SideMenuVC: UIViewController {

    
    @IBOutlet weak var tblSideMenu: UITableView!
    var sideMenuArr = [SideMenu]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenuArr = SideMenu.sampleSideMenu()
        tblSideMenu.reloadData()

    }
}


extension SideMenuVC: UITableViewDelegate,UITableViewDataSource{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sideMenuArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "sideMenuCell", for: indexPath) as! SideMenuCell
         cell.configureCell(sideMenu: sideMenuArr[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        NotificationCenter.default.post(name: NSNotification.Name("toggleSideMenu"), object: nil)
        switch indexPath.row{

        case 0 : NotificationCenter.default.post(name: NSNotification.Name("openHome"), object: nil)
        case 1: NotificationCenter.default.post(name: NSNotification.Name("openBitNews"), object: nil)
        case 2: NotificationCenter.default.post(name: NSNotification.Name("openBusiness"), object: nil)
            
        default: break
            
            
        }
        
    }
}
