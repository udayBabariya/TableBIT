//
//  SideMenuModel.swift
//  Bit
//
//  Created by uday on 8/25/17.
//  Copyright © 2017 D_Developer. All rights reserved.
//

import UIKit

class SideMenu: NSObject {
    
    var text:String!
    
    init(text: String) {
        self.text = text
    }
    
    static func sampleSideMenu() -> [SideMenu]{
        
        var sidemenuArr = [SideMenu]()
        
        let home = SideMenu(text: "Home")
        let BitNews = SideMenu(text: "BitNews")
        let Business = SideMenu(text: "Business")
        
        sidemenuArr.append(home)
        sidemenuArr.append(BitNews)
        sidemenuArr.append(Business)
        
        return sidemenuArr
        
        
    }
    
    
}
