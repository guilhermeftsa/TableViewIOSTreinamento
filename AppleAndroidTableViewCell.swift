//
//  AppleAndroidTableViewCell.swift
//  TableViewExample
//
//  Created by administrador on 13/07/2018.
//  Copyright © 2018 administrador. All rights reserved.
//

import UIKit
import Reusable
class AppleAndroidTableViewCell: UITableViewCell, NibReusable {
    
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var appleAndroid2: UIImageView!
    @IBOutlet weak var appleAndroid: UIImageView!
    
    @IBOutlet weak var labelNumeroRow: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

   
}
