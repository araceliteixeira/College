//
//  College.swift
//  College
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class College {
    /*var functions: [Function]
    var status: [Status]
    var countries: [Country]*/
    private var departments: [Department]
    private var employees: [Employee]
    private var departmentEmployees: [DepartmentEmployee]
    private var programs: [Program]
    private var courses: [Courses]
    
    init() {
        /*functions = [Function(1), getEmployee("Staff"),
                     Function(2), getEmployee("Instructor"),
                     Function(3, "Head")]
        status = [Status(1), getEmployee("Active"),
                  Status(2), getEmployee("Inactive")]
        countries = [Country(1), getEmployee("India"),
                     Country(2), getEmployee("Brazil"),
                     Country(3, "China"),
                     Country(4, "South Korea"),
                     Country(5, "Turkey")]*/
        departments = []
        employees = []
        departmentEmployees = []
        programs = []
        courses = []
    }
    
    func createCollege() {
        createEmployees()
        createDepartments()
        createDepartmentEmployees()
    }
    
    func createEmployees() {
        employees.append(Employee(1, "Luis Parfait", 1, "2015-08-01", ""))
        employees.append(Employee(2, "Keven Morgan", 1, "2015-08-01", "2016-06-01"))
        employees.append(Employee(3, "Cameron Vanhoy", 1, "2015-08-01", ""))
        employees.append(Employee(4, "Wilbert Kyte", 3, "2015-08-01", ""))
        employees.append(Employee(5, "Elijah Stancill", 3, "2015-08-01", ""))
        employees.append(Employee(6, "Tracey Dunne", 3, "2015-08-01", ""))
        employees.append(Employee(7, "Hilton Stanwood", 2, "2015-08-01", ""))
        employees.append(Employee(8, "Arturo Manzanares", 2, "2015-08-01", ""))
        employees.append(Employee(9, "Charles Boise", 2, "2015-08-01", ""))
        employees.append(Employee(10, "Lucio Dabney", 3, "2015-08-01", ""))
        employees.append(Employee(11, "Jeremy Orourke", 2, "2015-08-01", ""))
        employees.append(Employee(12, "Kenneth Backes", 2, "2015-08-01", ""))
        employees.append(Employee(13, "Byron Stolp", 2, "2015-08-01", ""))
        employees.append(Employee(14, "Moshe Terrell", 3, "2015-08-01", ""))
        employees.append(Employee(15, "Rodney Saxton", 2, "2015-08-01", ""))
        employees.append(Employee(16, "Timothy Blade", 2, "2015-08-01", ""))
        employees.append(Employee(17, "Calvin Mcgee", 2, "2015-08-01", ""))
        employees.append(Employee(18, "Emmitt Damato", 3, "2015-08-01", ""))
        employees.append(Employee(19, "Kevin Tellis", 2, "2015-08-01", ""))
        employees.append(Employee(20, "Rene Cornman", 2, "2015-08-01", ""))
        employees.append(Employee(21, "Jorge Thrush", 2, "2015-08-01", ""))
        employees.append(Employee(22, "Chong Batty", 3, "2015-08-01", ""))
        employees.append(Employee(23, "Mitchell Shaikh", 2, "2015-08-01", ""))
        employees.append(Employee(24, "George Batson", 2, "2015-08-01", ""))
        employees.append(Employee(25, "Jamaal Silverstein", 2, "2015-08-01", ""))
        employees.append(Employee(26, "Toney Gurley", 1, "2015-08-01", ""))
        employees.append(Employee(27, "Jefferey Nebeker", 1, "2015-08-01", ""))
        employees.append(Employee(28, "Javier Cheshire", 2, "2015-08-01", "2016-06-01"))
        employees.append(Employee(29, "Cleveland Allaire", 3, "2015-08-01", ""))
        employees.append(Employee(30, "Chance Penfield", 3, "2015-08-01", ""))
        employees.append(Employee(31, "Willa Kasel", 3, "2015-08-01", ""))
        employees.append(Employee(32, "Dalila Olmstead", 2, "2015-08-01", ""))
        employees.append(Employee(33, "Leesa Dietrick", 2, "2015-08-01", ""))
        employees.append(Employee(34, "Dalene Axford", 2, "2015-08-01", ""))
        employees.append(Employee(35, "Neta Barker", 3, "2015-08-01", ""))
        employees.append(Employee(36, "Georgina Holmon", 2, "2015-08-01", ""))
        employees.append(Employee(37, "Jamika Benton", 2, "2015-08-01", ""))
        employees.append(Employee(38, "Dorothy Berber", 2, "2015-08-01", ""))
        employees.append(Employee(39, "Verda Bengston", 3, "2015-08-01", ""))
        employees.append(Employee(40, "Penney Dix", 2, "2015-08-01", ""))
        employees.append(Employee(41, "Brigida Lagace", 2, "2015-08-01", ""))
        employees.append(Employee(42, "Sunni Corson", 2, "2015-08-01", ""))
        employees.append(Employee(43, "Veola Erben", 3, "2015-08-01", ""))
        employees.append(Employee(44, "Christa Galyean", 2, "2015-08-01", ""))
        employees.append(Employee(45, "Noella Hites", 2, "2015-08-01", ""))
        employees.append(Employee(46, "Fumiko Shell", 2, "2015-08-01", ""))
        employees.append(Employee(47, "Renda Centeno", 3, "2015-08-01", ""))
        employees.append(Employee(48, "Regina Mccallon", 2, "2015-08-01", ""))
        employees.append(Employee(49, "Laurene Membreno", 2, "2015-08-01", ""))
        employees.append(Employee(50, "Meaghan Switzer", 2, "2015-08-01", ""))
    }
    
    func createDepartments() {
        departments.append(Department(1, "Math and science", getEmployee(4)))
        departments.append(Department(2, "Information Technology", getEmployee(29)))
    }
    
    func createDepartmentEmployees() {
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(1)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(2)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(3)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(4)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(5)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(6)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(7)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(8)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(9)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(10)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(11)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(12)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(13)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(14)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(15)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(16)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(17)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(18)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(19)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(20)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(21)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(22)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(23)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(24)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(1), getEmployee(25)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(26)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(27)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(28)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(29)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(30)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(31)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(32)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(33)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(34)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(35)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(36)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(37)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(38)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(39)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(40)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(41)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(42)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(43)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(44)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(45)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(46)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(47)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(48)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(49)))
        departmentEmployees.append(DepartmentEmployee(getDepartment(2), getEmployee(50)))
    }
    
    func createPrograms() {
        programs.append(Program(1, "Applied Mathematics", getEmployee(5), getDepartment(1)))
        programs.append(Program(2, "Software Development", getEmployee(30), getDepartment(2)))
    }
    
    func createCourses() {
        courses.append(Course(1, "Introduction to Proofs", getEmployee(6), 2, getProgram(1)))
        courses.append(Course(2, "Calculus I", getEmployee(10), 4, getProgram(1)))
        courses.append(Course(3, "Linear Algebra I", getEmployee(14), 4, getProgram(1)))
        courses.append(Course(4, "Analysis I", getEmployee(18), 4, getProgram(1)))
        courses.append(Course(5, "Algebra I", getEmployee(22), 4, getProgram(1)))
        courses.append(Course(6, "Topics in Software Development", getEmployee(31), 2, getProgram(2)))
        courses.append(Course(7, "Basic Software Development", getEmployee(35), 4, getProgram(2)))
        courses.append(Course(8, "Basic Structured & Systems Programming", getEmployee(39), 4, getProgram(2)))
        courses.append(Course(9, "Open Source Programming", getEmployee(43), 4, getProgram(2)))
        courses.append(Course(10, "Web Site Application Development", getEmployee(47), 4, getProgram(2)))
        courses.append(Course(11, "Calculus and Linear Algebra for Commerce", getEmployee(8), 2, getProgram(1)))
        courses.append(Course(12, "Calculus II", getEmployee(12), 4, getProgram(1)))
        courses.append(Course(13, "Linear Algebra II", getEmployee(16), 4, getProgram(1)))
        courses.append(Course(14, "Analysis II", getEmployee(20), 4, getProgram(1)))
        courses.append(Course(15, "Algebra II", getEmployee(24), 4, getProgram(1)))
        courses.append(Course(16, "Quality in Software Development", getEmployee(33), 2, getProgram(2)))
        courses.append(Course(17, "Advanced Software Development", getEmployee(37), 4, getProgram(2)))
        courses.append(Course(18, "Advanced Structured & Systems Programming", getEmployee(41), 4, getProgram(2)))
        courses.append(Course(19, "IOS Programming", getEmployee(45), 4, getProgram(2)))
        courses.append(Course(20, "Android Programming", getEmployee(49), 4, getProgram(2)))
    }

    
    func getEmployee(_ id: Int) -> Employee {
        var emp = Employee()
        if let i = employees.index(where: { $0.getEmployeeId() == id }) {
            emp = employees[i]
        }
        return emp
    }
    
    func getDepartment(_ id: Int) -> Department {
        var dept = Department()
        if let i = departments.index(where: { $0.getDepartmentId() == id }) {
            dept = departments[i]
        }
        return dept
    }
                
    func getProgram(_ id: Int) -> Program {
        var prog = Program()
        if let i = programs.index(where: { $0.getProgramId() == id }) {
            prog = programs[i]
        }
        return prog
    }
    
    func getCourse(_ id: Int) -> Course {
        var course = Course()
        if let i = courses.index(where: { $0.getCourseId() == id }) {
            course = courses[i]
        }
        return course
    }
    
    /*func getFunctions() -> [Function]{
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
    }*/
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
    func getDepartmentEmployees() -> [DepartmentEmployee] {
        return departmentEmployees
    }
    func setDepartmentEmployees(_ departmentEmployees: [DepartmentEmployee]) {
        self.departmentEmployees = departmentEmployees
    }
}
