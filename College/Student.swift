//
//  Student.swift
//  CollegeProject
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class Student {
    
    private var studentId: Int
    private var name: String
    private var originCountry: Country
    private var startDate: NSDate
    private var endDate: NSDate
    private var status: Status
    
    init(){
        studentId = 0
        name = ""
        originCountry = Country()
        startDate = NSDate()
        endDate = NSDate()
        status = Status()
    }
    
    init(_ studentId: Int, _ name: String, _ originCountry: Country, _ startDate: NSDate, _ endDate: NSDate, _ status: Status) {
        self.studentId = studentId
        self.name = name
        self.originCountry = Country()
        self.startDate = startDate
        self.endDate = endDate
        self.status = Status()
    }
    
    func getStudentId() -> Int {
        return studentId
    }
    func getName() -> String {
        return name
    }
    func getOriginCountry() -> Country {
        return originCountry
    }
    func getStartDate() -> NSDate {
        return startDate
    }
    func getEndDate() -> NSDate {
        return endDate
    }
    func getStatus() -> Status {
        return status
    }
    
    func setStudentId(_ studentId:Int) {
        self.studentId = studentId
    }
    func setName(_ name:String) {
        self.name = name
    }
    func setOriginCountry(_ originCountry:Country) {
        self.originCountry = originCountry
    }
    func setStartDate(_ startDate: NSDate) {
        self.startDate = startDate
    }
    func setEndDate(_ endDate: NSDate) {
        self.endDate = endDate
    }
    func setStatus(_ status:Status) {
        self.status = status
    }
}
