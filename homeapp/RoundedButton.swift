//
//  RoundedButton.swift
//  homeapp
//
//  Created by Alex on 03/11/2018.
//  Copyright © 2018 Advanced Tech. All rights reserved.
//

import UIKit

class RoundedButton: UIButton{
    override func awakeFromNib() {
            super.awakeFromNib()
        
        layer.borderWidth = UIScreen.main.nativeScale
        contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = frame.height/2
        layer.borderColor =  isEnabled ?  tintColor.cgColor : UIColor.lightGray.cgColor
        
    }
    
    
    
}
