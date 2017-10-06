//
//  StudentClass.swift
//  CollegeProject
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class StudentClass {
    
    private var studentClassId: Int
    private var classe: Classe
    private var student: Student
    private var gradeAssig: Int
    private var gradeTest: Int
    private var gradeProject: Int
    
    init(){
        studentClassId = 0
        classe = Classe()
        student = Student()
        gradeAssig = 0
        gradeTest = 0
        gradeProject = 0
    }
    
    init(_ studentClassId: Int, _ classe: Classe, _ student: Student, _ gradeAssig: Int, _ gradeTest: Int, _ gradeProject: Int) {
        self.studentClassId = studentClassId
        self.name = Classe()
        self.originCountry = Country()
        self.gradeAssig = gradeAssig
        self.gradeTest = gradeTest
        self.gradeProject = gradeProject
    }
    
    func getStudentId() -> Int {
        return studentClassId
    }
    func getClasse() -> Classe {
        return classe
    }
    func getStudent() -> Student {
        return student
    }
    func getGradeAssig() -> Int {
        return gradeAssig
    }
    func getGradeTest() -> Int {
        return gradeTest
    }
    func getGradeProject() -> Int {
        return gradeProject
    }
    
    func setStudentId(_ studentClassId:Int) {
        self.studentClassId = studentClassId
    }
    func setName(_ name:Classe) {
        self.name = name
    }
    func setStudent(_ student:Student) {
        self.student = student
    }
    func setGradeAssig(_ gradeAssig: Int) {
        self.gradeAssig = gradeAssig
    }
    func setGradeTest(_ gradeTest: Int) {
        self.gradeTest = gradeTest
    }
    func setGradeProject(_ gradeProject:Int) {
        self.gradeProject = gradeProject
    }
}
