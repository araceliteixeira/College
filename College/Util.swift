//
//  Util.swift
//  College
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class Util {
    static let dateFormatter = DateFormatter()
    static let dateFormat = "yyyy-MM-dd"
    
    static func convertStringToDate(_ stringDate: String) -> NSDate {
        if stringDate == "" {
            return NSDate()
        }
        dateFormatter.dateFormat = dateFormat
        return dateFormatter.date(from:stringDate)! as NSDate
    }
    
    static func convertDateToString(_ date: NSDate) -> String {
        dateFormatter.dateFormat = dateFormat
        return dateFormatter.string(from:date as Date)
    }
}
