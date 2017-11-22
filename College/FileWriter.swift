//
//  FileWriter.swift
//  College
//
//  Created by Araceli Teixeira on 2017-11-22.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
//

import Foundation

class FileWriter {
    static func writeIntoFile(_ text: String, _ file: String) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let fileURL = dir.appendingPathComponent(file)
            
            //writing
            do {
                try text.write(to: fileURL, atomically: false, encoding: .utf8)
            }
            catch {/* error handling here */}
        }
    }
    
    static func testFile(_ file: String) -> String {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let fileURL = dir.appendingPathComponent(file)
            
            //reading
            do {
                let text2 = try String(contentsOf: fileURL, encoding: .utf8)
                return text2
            }
            catch {/* error handling here */}
        }
        return ""
    }
}

extension Employee {
    func toJson() -> String {
        var json = "employeeId:\(getEmployeeId())\n"
        json += "name:\"\(getName())\"\n"
        json += "mainFunction:\"\(getMainFunction())\"\n"
        json += "startDate:\"\(getStartDate())\"\n"
        json += "endDate:\"\(getEndDate())\"\n"
        return json
    }
}
extension Department {
    func toJson() -> String {
        var json = "departmentId:\(getDepartmentId())\n"
        json += "name:\"\(getName())\"\n"
        json += "head:\(getHead().getEmployeeId())\n"
        return json
    }
}
extension Program {
    func toJson() -> String {
        var json = "programId:\(getProgramId())\n"
        json += "name:\"\(getName())\"\n"
        json += "head:\(getHead().getEmployeeId())\n"
        json += "departmentId:\(getdepartment().getDepartmentId())\n"
        return json
    }
}
extension Course {
    func toJson() -> String {
        var json = "courseId:\(getCourseId())\n"
        json += "name:\"\(getName())\"\n"
        json += "head:\(getHead().getEmployeeId())\n"
        json += "programId:\(getProgram().getProgramId())\n"
        return json
    }
}
