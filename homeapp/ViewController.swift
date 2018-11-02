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
    
    
    @IBOutlet weak var offHidden: UIButton!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        ref = Database.database().reference()
        loadScreen()
        checkval()
        label3.isHidden = true
        
        
        
        
        
   
 
        
            
        
        
        
        
        
        
        
        /*            let post = snapshot.value as? String
            let actualPost = post
            let labelPost1 = (actualPost!)
            self.label3.text = labelPost1
            print (snapshot)
            
        }
  */

        
        
        
  //      let dateFormatter = DateFormatter()
   //     dateFormatter.timeStyle = .medium
        
    //    label1.text = "\(dateFormatter.string(from: currentDateTime+3600))"
        
        
        //Set FireBase Reference
        
        

        
        //Retreive Posts and Listen For Changes
//        databaseHandle = ref?.child("led").observe(.childChanged, with: { (snapshot) in let post = snapshot.value as? String
            
 //           let actualPost = post
 //           let labelPost = "Heating Is \(actualPost!)"
 //           self.textLabel.text = labelPost
 //               print (snapshot)
        
  //          })
        
    
        databaseHandle = ref?.child("time").observe(.childChanged, with: { (snapshot) in let post1 = snapshot.value as? String
    
        let actualPost1 = post1
        let labelPost2 = (actualPost1!)
        self.label3.text = labelPost2
        print (snapshot)
    
    })
    
    
    

    
    
    
    
    
    
    
    }
    
    
    
    
    func updateTimeLabel() {
        let formatter = DateFormatter()
            formatter.timeStyle = .short
        let str = formatter.string(from: Date()+3600)
        label1.text = str
    }
    
    
    
  //  func showAlert() {
  //      let alert = UIAlertController(title: "Alert", message: "Wait Please!",
    //preferredStyle: .alert)
    //    self.present(alert, animated: true, completion: nil)
   //     Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false, block: { _ in alert.dismiss(animated: true, completion: nil)} )
   // }
    
    
    
    
    
    
    
    
    @IBAction func on(_ sender: Any) {
        
        //Post Data To Firebase
       
        updateTimeLabel()
       // showAlert()
        ref?.child("led").child("State").setValue("ON")
        ref?.child("time").child("Off").setValue(label1.text)
        
       
        //self.label3.isHidden = false
       // self.label1.isHidden = false
        self.label2.isHidden = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 3600) {
            self.label1.isHidden = true
            self.label2.isHidden = true
            //self.label3.isHidden = true
        }
        
        
        
        
        
        
        
        }
    
    
    @IBAction func off(_ sender: Any) {
        
        //Post Data To Firebase
        
        ref?.child("led").child("State").setValue("OFF")
        ref?.child("time").child("Off").setValue("  ")
        label1.isHidden = true
        label2.isHidden = true
        //label3.isHidden = true
        //offHidden.isHidden = false
        //onHidden.isHidden = true
        
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
                
                self.label4.isHidden = true
            }
            }
        )
    }
    
    
    
    
    
    
    
    
   
    }
    


