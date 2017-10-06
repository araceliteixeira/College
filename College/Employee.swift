//
//  Employee.swift
//  CollegeProject
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class Employee {
    
    private var employeeId: Int
    private var name : String
    private var mainFunction: Int
    private var startDate: NSDate
    private var endDate: NSDate
    
    
    init(){
        employeeId = 0
        name = ""
        mainFunction = 0
        startDate = NSDate()
        endDate = NSDate()
    }
    init(_ employeeId: Int, _ name: String, _ mainFunction: Int, _ startDate: NSDate, _ endDate: NSDate) {
        self.employeeId = employeeId
        self.name = name
        self.mainFunction = mainFunction
        self.startDate = startDate
        self.endDate = endDate
    }
    
    func getEmployeeId() -> Int {
        return employeeId
    }
    
    func setEmployeeId(_ employeeId: Int) {
        self.employeeId = employeeId
    }
    
    func getname() -> String {
        return name
    }

    func setName(_ name: String) {
        self.name = name
    }
    
    func getMainFunction() -> Int {
        return mainFunction
    }
    
    func setMainFunction(_ mainFunction: Int) {
        self.mainFunction = mainFunction
    }
    
    func getStartDate() -> NSDate {
        return startDate
    }
    
    func setStartDate(_ startDate: NSDate) {
        self.startDate = startDate
    }
    
    func getEndDate() -> NSDate {
        return endDate
    }
    
    func setEndDate(_ endDate: NSDate) {
        self.endDate = endDate
    }
    
}
