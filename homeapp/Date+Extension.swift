//
//  Date+Extension.swift
//  homeapp
//
//  Created by Alex on 11/11/2018.
//  Copyright © 2018 Advanced Tech. All rights reserved.
//

import Foundation
import UIKit
extension Date {
    
    static func calculateTime(hour: Int, minute: Int) -> Date {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm"
        formatter.locale = Locale(identifier: "en_GB")
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        let calculatedDate = formatter.date(from: "\(hour):\(minute)")
        return calculatedDate!
        
        
    }
    
    
    func getTime() -> (hour: Int, minute: Int){
        
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: self)
        let min = calendar.component(.minute, from: self)
        
        return (hour, min)
        
        
    }
    
}
