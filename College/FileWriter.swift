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
        var json = "\"employeeId\":\(getEmployeeId()),\n"
        json += "\"name\":\"\(getName())\",\n"
        json += "\"mainFunction\":\"\(getMainFunction())\",\n"
        json += "\"startDate\":\"\(getStartDate())\",\n"
        json += "\"endDate\":\"\(getEndDate())\"\n"
        return json
    }
}
extension Department {
    func toJson() -> String {
        var json = "\"departmentId\":\(getDepartmentId()),\n"
        json += "\"name\":\"\(getName())\",\n"
        json += "\"head\":\(getHead().getEmployeeId())\n"
        return json
    }
}
extension DepartmentEmployee {
    func toJson() -> String {
        var json = "\"departmentId\":\(getDepartment().getDepartmentId()),\n"
        json += "\"employeeId\":\(getEmployee().getEmployeeId())\n"
        return json
    }
}
extension Program {
    func toJson() -> String {
        var json = "\"programId\":\(getProgramId()),\n"
        json += "\"name\":\"\(getName())\",\n"
        json += "\"head\":\(getHead().getEmployeeId()),\n"
        json += "\"departmentId\":\(getdepartment().getDepartmentId())\n"
        return json
    }
}
extension Course {
    func toJson() -> String {
        var json = "\"courseId\":\(getCourseId()),\n"
        json += "\"name\":\"\(getName())\",\n"
        json += "\"head\":\(getHead().getEmployeeId()),\n"
        json += "\"programId\":\(getProgram().getProgramId()),\n"
        json += "\"creditHour\":\(getCreditHour())\n"
        return json
    }
}
extension Classe {
    func toJson() -> String {
        var json = "\"classeId\":\(getClasseId()),\n"
        json += "\"courseId\":\(getCourse().getCourseId()),\n"
        json += "\"head\":\(getInstructor().getEmployeeId())\n"
        return json
    }
}
extension Student {
    func toJson() -> String {
        var json = "\"studentId\":\(getStudentId()),\n"
        json += "\"name\":\"\(getName())\",\n"
        json += "\"originCountry\":\"\(getOriginCountry())\",\n"
        json += "\"startDate\":\"\(getStartDate())\",\n"
        json += "\"endDate\":\"\(getEndDate())\",\n"
        json += "\"status\":\"\(getStatus())\"\n"
        return json
    }
}
extension StudentClass {
    func toJson() -> String {
        var json = "\"studentClassId\":\(getStudentClassId()),\n"
        json += "\"classId\":\(getClasse().getClasseId()),\n"
        json += "\"studentId\":\(getStudent().getStudentId()),\n"
        json += "\"gradeAssig\":\(getGradeAssig() ?? -1),\n"
        json += "\"gradeTest\":\(getGradeTest() ?? -1),\n"
        json += "\"gradeProject\":\(getGradeProject() ?? -1)\n"
        return json
    }
}
extension Schedule {
    func toJson() -> String {
        var json = "\"scheduleId\":\(getScheduleId()),\n"
        json += "\"classId\":\(getClasse().getClasseId()),\n"
        json += "\"weekday\":\"\(getWeekday())\",\n"
        json += "\"startHour\":\"\(getStartHour())\",\n"
        json += "\"endHour\":\"\(getEndHour())\",\n"
        json += "\"startDate\":\"\(getStartDate())\",\n"
        json += "\"endDate\":\"\(getEndDate())\"\n"
        return json
    }
}
extension Function {
    static func toJson() -> String {
        var json = "\"\(Function.Staff)\":\(Function.Staff.rawValue),\n"
        json += "\"\(Function.Instructor)\":\(Function.Instructor.rawValue),\n"
        json += "\"\(Function.Head)\":\(Function.Head.rawValue)\n"
        return json
    }
}
extension Country {
    static func toJson() -> String {
        var json = "\"\(Country.India)\":\(Country.India.rawValue),\n"
        json += "\"\(Country.Brazil)\":\(Country.Brazil.rawValue),\n"
        json += "\"\(Country.China)\":\(Country.China.rawValue),\n"
        json += "\"\(Country.Philippines)\":\(Country.Philippines.rawValue),\n"
        json += "\"\(Country.Turkey)\":\(Country.Turkey.rawValue)\n"
        return json
    }
}
extension Status {
    static func toJson() -> String {
        var json = "\"\(Status.Active)\":\(Status.Active.rawValue),\n"
        json += "\"\(Status.Inactive)\":\(Status.Inactive.rawValue)\n"
        return json
    }
}
extension GradeAux {
    func toJson() -> String {
        var json = "\"gradeAuxId\":\(getGradeAuxId()),\n"
        json += "\"letter\":\"\(getLetter())\",\n"
        json += "\"pointsStart\":\"\(getPointsStart())\",\n"
        json += "\"pointsEnd\":\"\(getPointsEnd())\"\n"
        return json
    }
}
extension College {
    func createJsonFiles() {
        FileWriter.writeIntoFile(createEmployeeJson(), "employee.json")
        FileWriter.writeIntoFile(createDepartmentJson(), "department.json")
        FileWriter.writeIntoFile(createDepartmentEmployeeJson(), "departmentEmployee.json")
        FileWriter.writeIntoFile(createProgramJson(), "program.json")
        FileWriter.writeIntoFile(createCourseJson(), "course.json")
        FileWriter.writeIntoFile(createClasseJson(), "classe.json")
        FileWriter.writeIntoFile(createStudentJson(), "student.json")
        FileWriter.writeIntoFile(createStudentClassJson(), "studentClass.json")
        FileWriter.writeIntoFile(createScheduleJson(), "schedule.json")
        FileWriter.writeIntoFile(createFunctionJson(), "function.json")
        FileWriter.writeIntoFile(createCountryJson(), "country.json")
        FileWriter.writeIntoFile(createStatusJson(), "status.json")
        FileWriter.writeIntoFile(createGradeAuxJson(), "gradeAux.json")
    }
    
    func createEmployeeJson() -> String {
        var json = "employee: [\n"
        for e in getEmployees() {
            json += "{\n" + e.toJson() + "},\n"
        }
        return String(json.dropLast(2)) + "]\n"
    }
    
    func createDepartmentJson() -> String {
        var json = "department: [\n"
        for d in getDepartments() {
            json += "{\n" + d.toJson() + "},\n"
        }
        return String(json.dropLast(2)) + "]\n"
    }
    
    func createDepartmentEmployeeJson() -> String {
        var json = "departmentEmployee: [\n"
        for de in getDepartmentEmployees() {
            json += "{\n" + de.toJson() + "},\n"
        }
        return String(json.dropLast(2)) + "]\n"
    }
    
    func createProgramJson() -> String {
        var json = "program: [\n"
        for p in getPrograms() {
            json += "{\n" + p.toJson() + "},\n"
        }
        return String(json.dropLast(2)) + "]\n"
    }
    
    func createCourseJson() -> String {
        var json = "course: [\n"
        for c in getCourses() {
            json += "{\n" + c.toJson() + "},\n"
        }
        return String(json.dropLast(2)) + "]\n"
    }
    
    func createClasseJson() -> String {
        var json = "classe: [\n"
        for c in getClasses() {
            json += "{\n" + c.toJson() + "},\n"
        }
        return String(json.dropLast(2)) + "]\n"
    }
    
    func createStudentJson() -> String {
        var json = "student: [\n"
        for s in getStudents() {
            json += "{\n" + s.toJson() + "},\n"
        }
        return String(json.dropLast(2)) + "]\n"
    }
    
    func createStudentClassJson() -> String {
        var json = "studentClass: [\n"
        for sc in getStudentClasses() {
            json += "{\n" + sc.toJson() + "},\n"
        }
        return String(json.dropLast(2)) + "]\n"
    }
    
    func createScheduleJson() -> String {
        var json = "schedule: [\n"
        for s in getSchedules() {
            json += "{\n" + s.toJson() + "},\n"
        }
        return String(json.dropLast(2)) + "]\n"
    }
    
    func createFunctionJson() -> String {
        return "{\n" + Function.toJson() + "}\n"
    }
    
    func createCountryJson() -> String {
        return "{\n" + Country.toJson() + "}\n"
    }
    
    func createStatusJson() -> String {
        return "{\n" + Status.toJson() + "}\n"
    }
    
    func createGradeAuxJson() -> String {
        var json = "gradeAux: [\n"
        for g in Grade.grades {
            json += "{\n" + g.toJson() + "},\n"
        }
        return String(json.dropLast(2)) + "]\n"
    }
}
