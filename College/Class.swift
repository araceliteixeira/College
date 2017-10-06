//
//  Class.swift
//  CollegeProject
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class Class {
    
    private var classId: Int
    private var course: Course
    private var instructor: Employee
    
    init(){
        classId = 0
        course = Course()
        instructor = Employee()
    }
    
    init(_ classId: Int, _ course: Course, _ instructor: Employee) {
        self.classId = classId
        self.course = course
        self.instructor = instructor
    }
    
    func getClassId() -> Int {
        return classId
    }
    func setClassId(_ classId: Int) {
        self.classId = classId
    }
    func getCourse() -> Course {
        return course
    }
    func setCourse(_ course: Course) {
        self.course = course
    }
    func getInstructor() -> Employee {
        return instructor
    }
    func setInstructor(_ instructor: Employee) {
        self.instructor = instructor
    }
}
