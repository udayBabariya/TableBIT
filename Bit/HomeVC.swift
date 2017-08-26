//
//  HomeVC.swift
//  Bit
//
//  Created by uday on 8/25/17.
//  Copyright © 2017 D_Developer. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    var sideMenuOpen:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(openBitNews), name: NSNotification.Name("openBitNews"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(openBusiness), name: NSNotification.Name("openBusiness"), object: nil)
    }
    
    
    @IBAction func OnMenuBtn(_ sender: Any) {
//        print("menuBtn_TAPPED")
        NotificationCenter.default.post(name: NSNotification.Name("toggleSideMenu"), object: nil)
    }
    
    func openBitNews (){
        performSegue(withIdentifier: "openBitNews", sender: nil)

    }
    
    func openBusiness () {
        performSegue(withIdentifier: "openBusiness", sender: nil)
    }

}
