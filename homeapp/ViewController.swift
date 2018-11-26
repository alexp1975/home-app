//
//  ViewController.swift
//  homeapp
//
//  Created by Alex on 01/11/2018.
//  Copyright © 2018 Advanced Tech. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {
    
    
    
     var ref:DatabaseReference?
    
     var databaseHandle : DatabaseHandle?
    
     var currentDateTime = Date()
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var onHidden: UIButton!
    @IBOutlet weak var label5: UILabel!
    
    @IBOutlet weak var label6: UILabel!
    
    @IBOutlet weak var offHidden: UIButton!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        ref = Database.database().reference()
        
        //Check database to see if heating, on prints result to label4
        loadScreen()
        
        //Check time against database timeset, disables boost button
        checkval()
        
        tempDisplay()
        
        label2.isHidden = true
      
    
        if label4.text == nil{
            
            
            self.label5.isHidden = true
        }
        else{
            
            self.label5.isHidden = false
            
            
        }
    
        databaseHandle = ref?.child("time").observe(.childChanged, with: { (snapshot) in let post1 = snapshot.value as? String
    
        let actualPost1 = post1
        let labelPost2 = (actualPost1!)
            self.label4.text = (labelPost2)
        print (snapshot)
    
    })
    
    }
    
    
    func updateTimeLabel() {
        let formatter = DateFormatter()
            formatter.timeStyle = .short
        let str = formatter.string(from: Date()+3600)
        label1.text = str
    }
    
    
    

    
    
    @IBAction func on(_ sender: Any) {
        
        //Post Data To Firebase
       
        updateTimeLabel()
       // showAlert()
        ref?.child("led").child("State").setValue("ON")
        ref?.child("time").child("Off").setValue(label1.text)
        
       
        
       // self.label1.isHidden = false
       // self.label2.isHidden = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 3600) {
            self.label1.isHidden = true
            self.label2.isHidden = true
            
        }
        
        }
    
    
    @IBAction func off(_ sender: Any) {
        
        //Post Data To Firebase
        
        ref?.child("led").child("State").setValue("OFF")
        ref?.child("time").child("Off").setValue("  ")
        label1.isHidden = true
        onHidden.isEnabled = true
        
        
    }
    
    
    
    
    
    func loadScreen() {
        
        ref?.child("time").child("Off").observe(.value, with: { snapshot in let post2 = snapshot.value as? String
    
            let actualPost2 = post2
            let labelPost5 = (actualPost2)
            self.label4.text = labelPost5
            print (snapshot)
    
        }
        )
    }
    
    
    
    
    
    func checkval() {
        
        
        ref?.child("time").child("Off").observe(.value, with: { snapshot in let value = snapshot.value as? String
        
            
            let formatter = DateFormatter()
            formatter.timeStyle = .short
            let now = formatter.string(from: Date())
            self.label1.text = now
            
            
            self.label2.text = (value)
            
            if self.label2.text! > now {
                
            self.onHidden.isEnabled = false
           
            
            }
            }
        )
    }
    
    
    
    
    
    
    func tempDisplay() {
        
        
        ref?.child("temp").observe(.value, with: { snapshot in let value = snapshot.value as? String
            

            
            
            self.label6.text = (value)
    
                
            
                
                
            }
        )}
    
    
    
   
    }
    


