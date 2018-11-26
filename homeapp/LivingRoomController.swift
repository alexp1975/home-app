//
//  LivingRoomController.swift
//  homeapp
//
//  Created by Alex on 02/11/2018.
//  Copyright © 2018 Advanced Tech. All rights reserved.
//
import Foundation
import UIKit
import Firebase

class LivingRoomController: UIViewController {

    
    var ref:DatabaseReference?
    var databaseHandle : DatabaseHandle?



 //   @IBOutlet weak var dateTime: UIDatePicker!
    @IBOutlet weak var SelectedTime: UILabel!
    
    @IBOutlet weak var timeOn1: UILabel!
    @IBOutlet weak var on1: UIButton!
    
    
    @IBOutlet weak var monOfftrigger1: UILabel!
    @IBOutlet weak var timeOff1: UILabel!
    @IBOutlet weak var off1: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()
        
        //dateTime?.datePickerMode = .date
 //       dateTime?.datePickerMode = .time
       
        
        
        
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func Time(_ sender: UIDatePicker, forEvent event: UIEvent) {
        
        SelectedTime?.text = "\(sender.date.getTime().hour):\(sender.date.getTime().minute)"
        
    }

    
    @IBAction func TimeOff1(_ sender: UIDatePicker, forEvent event: UIEvent) {
        
       monOfftrigger1.text? = "\(sender.date.getTime().hour):\(sender.date.getTime().minute)"
        
        
    }
    
    
    func SetOneOn(){
        
//        dateTime.isHidden = false
        timeOn1.isHidden = false
        timeOn1.text = (SelectedTime.text)
        ref?.child("Day").child("MonOn1").setValue(SelectedTime.text)
        
        if timeOn1.text == (""){
            
            on1.isHidden = false
        }
        
        else{
            
            on1.isHidden = true
            
        }
        return()
    }
    
    
    
    
    
    func SetOneOff(){
        
        
//        dateTime.isHidden = false
        timeOff1.isHidden = false
        timeOff1.text = (monOfftrigger1.text)
        ref?.child("Day").child("MonOff1").setValue(timeOff1.text)
        
        if timeOn1.text == ("") || timeOn1.text == nil{
            
            off1.isHidden = false
        }
            
        else{
            
            off1.isHidden = true
            
        }
        return()
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func On1(_ sender: UIButton) {
        
        //dateTime.isHidden = false
        //timeOn1.isHidden = false
        //timeOn1.text = (SelectedTime.text)
        sender.setTitle("Set On", for: UIControl.State.normal)
        SetOneOn()
        //ref?.child("Day").child("MonOn1").setValue(SelectedTime.text)

        //if timeOn1.text == (""){
            
         //  on1.isHidden = false
            
            
        //}
        //else{
            
         //   on1.isHidden = true
        

       // }
    }
    
    
    @IBAction func Off1(_ sender: UIButton) {
        
        //dateTime.isHidden = false
        //timeOff1.isHidden = false
        //timeOff1.text = monOfftrigger1.text
        sender.setTitle("Set Off", for: UIControl.State.normal)
        SetOneOff()
        //ref?.child("Day").child("MonOff1").setValue(timeOff1.text)
        
        //if timeOff1.text == (""){
            
         //   off1.isHidden = false
            
            
        //}
        //else{
            
            
           // timeOff1.isHidden = false
            //off1.isHidden = true
            
        //}
        
    }
    
    
    
    
    
    
    
    @IBAction func On2(_ sender: Any) {
        
//        dateTime.isHidden = false
    }
    
    
    
    @IBAction func Off2(_ sender: Any) {
        
//        dateTime.isHidden = false
    }
    
    
    
    
    
}
