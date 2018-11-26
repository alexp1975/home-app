//
//  DayPickerController.swift
//  homeapp
//
//  Created by Alex on 26/11/2018.
//  Copyright © 2018 Advanced Tech. All rights reserved.
//

import Foundation
import UIKit

class DayPickerController: UIViewController {
   
    @IBOutlet weak var Set2: UIImageView!
    @IBOutlet weak var Set1: UIImageView!
    @IBOutlet weak var Set3: UIImageView!
    @IBOutlet weak var Set4: UIImageView!
    @IBOutlet weak var Set5: UIImageView!
    @IBOutlet weak var Set6: UIImageView!
    @IBOutlet weak var Set7: UIImageView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    }
    
    @IBAction func MondaySet(_ sender: Any) {
       
        if Set1.isHidden {
            Set1.isHidden = false
        }else {
            Set1.isHidden = true
        }
    }
   
    @IBAction func TuesdaySet(_ sender: Any) {
        
        if Set2.isHidden {
            Set2.isHidden = false
        }else {
            Set2.isHidden = true
        }
    }
    
    @IBAction func WednesdaySet(_ sender: Any) {
        
        if Set3.isHidden{
            Set3.isHidden = false
        }else {
            Set3.isHidden = true
        }
    }
    
    @IBAction func ThursdaySet(_ sender: Any) {
        
        if Set4.isHidden{
            Set4.isHidden = false
        }else {
            Set4.isHidden = true
        }
    }
    
    @IBAction func FridaySet(_ sender: Any) {
        
        if Set5.isHidden{
            Set5.isHidden = false
        }else {
            Set5.isHidden = true
        }
    }
    
    @IBAction func SaturdaySet(_ sender: Any) {
        
        if Set6.isHidden{
            Set6.isHidden = false
        } else {
            Set6.isHidden = true
        }
    }
    
    @IBAction func SundaySet(_ sender: Any) {
        
        if Set7.isHidden{
            Set7.isHidden = false
        }else{
            Set7.isHidden = true
        }
    }
    
    
    
}
