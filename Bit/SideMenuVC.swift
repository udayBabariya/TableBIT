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
    }
}
