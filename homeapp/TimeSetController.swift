//
//  TimeSet.swift
//  homeapp
//
//  Created by Alex on 26/11/2018.
//  Copyright © 2018 Advanced Tech. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class TimeSetController: UIViewController {
    
    var ref:DatabaseReference?
    var databaseHandle : DatabaseHandle?
    
    @IBOutlet weak var dateTime: UIDatePicker!
    
    @IBOutlet weak var TimePickerOff: UIDatePicker!
    
    @IBOutlet weak var SelectedTime: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateTime.setValue(UIColor.white, forKeyPath: "textColor")
        
        TimePickerOff.setValue(UIColor.white, forKeyPath: "textColor")
        
        
        ref = Database.database().reference()
        
        
        dateTime?.datePickerMode = .time
        TimePickerOff?.datePickerMode = .time
        
        

        
    
    
    }
    
    
    @IBAction func TimeOn(_ sender: UIDatePicker, forEvent event: UIEvent) {
        SelectedTime?.text = "\(sender.date.getTime().hour):\(sender.date.getTime().minute)"
    }
    
//    @IBAction func TimeOff(_ sender: UIDatePicker, forEvent event: UIEvent) {
//        SelectedTime1?.text = "\(sender.date.getTime().hour):\(sender.date.getTime().minute)"
    
//        }
    
    
    
    
    
    
    
    
    
    
    
}
