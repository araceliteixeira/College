//
//  GradeAux.swift
//  CollegeProject
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class GradeAux {
    
    private var gradeAuxId: Int
    private var letter: String
    private var pointsStart: String
    private var pointsEnd: String
    
    init(){
        gradeAuxId = 0
        letter = ""
        pointsStart = ""
        pointsEnd = ""
    }
    
    init(_ gradeAuxId: Int, _ letter: String, _ pointsStart: String, _ pointsEnd: String) {
        self.gradeAuxId = gradeAuxId
        self.letter = letter
        self.pointsStart = pointsStart
        self.pointsEnd = pointsEnd
    }
    
    func getGradeAuxId() -> Int {
        return gradeAuxId
    }
    func getLetter() -> String {
        return letter
    }
    func getPointsStart() -> String {
        return pointsStart
    }
    func getPointsEnd() -> String {
        return pointsEnd
    }
    func setGradeAuxId(_ gradeAuxId:Int) {
        self.gradeAuxId = gradeAuxId
    }
    func setLetter(_ letter:String) {
        self.letter = letter
    }
    func setPointsStart(_ pointsStart:String) {
        self.pointsStart = pointsStart
    }
    func setPointsEnd(_ pointsEnd:String) {
        self.pointsEnd = pointsEnd
    }
}
