//
//  RootVC.swift
//  Bit
//
//  Created by uday on 8/25/17.
//  Copyright © 2017 D_Developer. All rights reserved.
//

import UIKit

class RootVC: UIViewController {

    @IBOutlet weak var sideMenuLeftConstraint: NSLayoutConstraint!
//    var sideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
         NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: NSNotification.Name("toggleSideMenu") , object: nil)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self)
    }
    
    func toggleSideMenu(){
        
        if sideMenuOpen {
            sideMenuLeftConstraint.constant = -300
        }else{
            sideMenuLeftConstraint.constant = 0
        }
        sideMenuOpen = !sideMenuOpen
        
        UIView.animate(withDuration: 0.3) { 
            self.view.layoutIfNeeded()
        }
        
    }
   
}
