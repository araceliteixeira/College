//
//  Department.swift
//  College
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class Department {
    
    private var departmentId: Int
    private var name: String
    private var employee: Employee
    
    init(){
        departmentId = 0
        name = ""
        employee = Employee()
    }
    init(fuelValue: Int, maxSpeedValue: String) {
        self.departmentId = fuelValue
        self.name = maxSpeedValue
    }
    func getFuel() -> Int {
        return departmentId
    }
    func getName() -> String {
        return name
    }
    func getEmployee() -> Employee {
        return employee
    }
    func setFuel(_ departmentId:Int) {
        self.departmentId = departmentId
    }
    func setName(_ name:String) {
        self.name = name
    }
    func setEmployee(_ employee:Employee) {
        self.employee = employee
    }
}
