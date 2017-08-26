//
//  SideMenuCell.swift
//  Bit
//
//  Created by uday on 8/25/17.
//  Copyright © 2017 D_Developer. All rights reserved.
//

import UIKit

class SideMenuCell: UITableViewCell {

    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configureCell(sideMenu: SideMenu) {
        self.lblText.text = sideMenu.text
        self.imgView.image = sideMenu.img
    }
    

}
