//
//  College.swift
//  College
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class College {
    var functions: [Function]
    var status: [Status]
    var countries: [Country]
    var departments: [Department]
    var employees: [Employee]
    var gradAux: [GradeAux]
    var programs: [Program]
    
    init() {
        functions = [Function(1, "Staff"),
                     Function(2, "Instructor"),
                     Function(3, "Head")]
        status = [Status(1, "Active"),
                  Status(2, "Inactive")]
        countries = [Country(1, "India"),
                     Country(2, "Brazil"),
                     Country(3, "China"),
                     Country(4, "South Korea"),
                     Country(5, "Turkey")]
        departments = []
        employees = []
        gradAux = []
        programs = []
    }
    
    func getFunctions() -> [Function]{
        return functions
    }
    func setFunctions(_ functions: [Function]) {
        self.functions = functions
    }
    func getStatus() -> [Status]{
        return status
    }
    func setStatus(_ status: [Status]) {
        self.status = status
    }
    func getCountries() -> [Country] {
        return countries
    }
    func setCountries(_ countries: [Country]) {
        self.countries = countries
    }
    func getDepartments() -> [Department] {
        return departments
    }
    func setDepartments(_ departments: [Department]) {
        self.departments = departments
    }
    func getEmployees() -> [Employee] {
        return employees
    }
    func setEmployees(_ employees: [Employee]) {
        self.employees = employees
    }
    func getGradAux() -> [GradeAux] {
        return gradAux
    }
    func setGradAux(_ gradAux: [GradeAux]) {
        self.gradAux = gradAux
    }
    func getPrograms() -> [Program] {
        return programs
    }
    func setPrograms(_ programs: [Program]) {
        self.programs = programs
    }
}
