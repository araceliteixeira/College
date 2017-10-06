//
//  Util.swift
//  College
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class Util {
    static func convertStringToDate(_ stringDate: String) -> NSDate {
        if stringDate == "" {
            return NSDate()
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.date(from:stringDate)! as NSDate
    }
    
    static func convertDateToString(_ date: NSDate) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from:date as Date)
    }
}
