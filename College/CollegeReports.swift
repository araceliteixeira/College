//
//  CollegeReports.swift
//  College
//
//  Created by MacStudent on 2017-10-11.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class CollegeReports {
    private var college: College
    
    init() {
        college = College()
        college.createCollege()
    }
    
    /*
     - Instructors by classes and average student grades
     
     SELECT e.name as 'Instructor',
     cl.class_id as 'Class ID',
     co.name as 'Course',
     (AVG(sc.grade_assig + sc.grade_test + sc.grade_project)) DIV 3 as 'Average Grade'
     FROM employee e INNER JOIN class cl ON (e.employee_id = cl.instructor_id)
     INNER JOIN student_class sc ON (sc.class_id = cl.class_id)
     INNER JOIN course co ON (cl.course_id = co.course_id)
     WHERE sc.grade_project is not null
     GROUP BY e.employee_id, cl.class_id, co.name;
    */
    func instructorsByClasses() -> String {
        var report = ""
        for c in college.getClasses() {
            if getAverageGradeOfClasse(c) != 0 {
                let instructor = c.getInstructor().getName()
                let classId = c.getClasseId()
                let course = c.getCourse().getName()
                let average = getAverageGradeOfClasse(c)
                report += "Instructor: \(instructor) Class Id: \(classId) Course: \(course) Average: \(average) \n"
            }
        }
        return report
    }
    
    /*
     - Number of students by country
     
     SELECT c.name as 'Country',
     COUNT(s.student_id) as 'Number of Students'
     FROM country c INNER JOIN student s ON (c.country_id = s.origincountry_id)
     GROUP BY c.country_id
     ORDER BY count(s.student_id) DESC;

    */
    func studentsByCountry() -> String {
        var report = ""
        var countries: [Country] = []
        for s in college.getStudents() {
            if !countries.contains(s.getOriginCountry()) {
                countries.append(s.getOriginCountry())
            }
        }
        for c in countries {
            var count = 0
            for s in college.getStudents() {
                if s.getOriginCountry() == c {
                    count += 1
                }
            }
            report += Util.pad(String(describing: c), 15) + "| \(count) students\n"
        }
        return report
    }
    
    /*
     - Top 3 courses with worst average grades
     
     SELECT co.name as 'Course',
     AVG(sc.grade_assig + sc.grade_test + sc.grade_project) DIV 3 as Grade
     FROM course co INNER JOIN class cl ON (co.course_id = cl.course_id)
     INNER JOIN student_class sc ON (cl.class_id = sc.class_id)
     WHERE sc.grade_project is not null
     GROUP BY co.course_id
     ORDER BY Grade ASC
     LIMIT 3;
    */
    func coursesByWorstAverage() -> String {
        var coursesGrade: [(Course, Int)] = []
        
        for c in college.getCourses() {
            coursesGrade.append((c, getAverageGradeOfCourse(c)))
        }
        coursesGrade = coursesGrade.sorted(by: {$0.1 > $1.1})
        var report = Util.pad(coursesGrade[0].0.getName(), 30) + "| \(coursesGrade[0].1)\n"
        report += Util.pad(coursesGrade[1].0.getName(), 30) + "| \(coursesGrade[1].1)\n"
        report += Util.pad(coursesGrade[2].0.getName(), 30) + "| \(coursesGrade[2].1)\n"
        return report
    }
    
    func getAverageGradeOfCourse(_ course: Course) -> Int {
        var sumOfGrades = 0
        var numberOfGrades = 0
        for co in college.getCourses() {
            for cl in getClassesOfCourse(co) {
                if getAverageGradeOfClasse(cl) != 0 {
                    sumOfGrades += getAverageGradeOfClasse(cl)
                    numberOfGrades += 1
                }
            }
        }
        return sumOfGrades / (numberOfGrades != 0 ? numberOfGrades : 1)
    }
    
    func getAverageGradeOfClasse(_ classe: Classe) -> Int {
        var sumOfGrades = 0
        var numberOfGrades = 0
        for sc in college.getStudentClasses() {
            if sc.getClasse().getClasseId() == classe.getClasseId() {
                if sc.getGradeAssig() != nil && sc.getGradeTest() != nil && sc.getGradeProject() != nil {
                    sumOfGrades += (sc.getGradeAssig()! + sc.getGradeTest()! + sc.getGradeProject()!) / 3
                    numberOfGrades += 1
                }
            }
        }
        return sumOfGrades / (numberOfGrades != 0 ? numberOfGrades : 1)
    }
    
    func getClassesOfCourse(_ course: Course) -> [Classe] {
        var classes: [Classe] = []
        for c in college.getClasses() {
            if c.getCourse().getCourseId() == course.getCourseId() {
                classes.append(c)
            }
        }
        return classes
    }
    
    /*
     - Number of classes per instructor per weekday
     
     SELECT e.name as 'Instructor',
     sd.weekday as 'Weekday',
     count(cl.class_id) as 'Number of classes'
     FROM employee e
     INNER JOIN class cl ON (e.employee_id = cl.instructor_id)
     INNER JOIN schedule sd ON (cl.class_id = sd.class_id)
     WHERE sd.start_date >= '2017-09-01' AND sd.end_date <= '2017-12-31'
     GROUP BY e.employee_id, sd.weekday
     ORDER BY count(cl.class_id);
    */
    func classesByInscructorsPerWeek() -> String  {
        var report = ""
        var count = 0
        var weekday = ""
        for c in college.getClasses() {
            let instructor = c.getInstructor().getName()
            for s in college.getSchedules() {
                if (s.getClasse().getClasseId() == c.getClasseId()) {
                    weekday = s.getWeekday()
                }
            }
            count += 1
            report += "Instructor: \(instructor) Weekday: \(weekday) Number of classes: \(count) \n"
        }
        return report
    }
    
    /*
     - Top student with best average grade by program
     
     SELECT t.Program, t.Student, MAX(t.Grade) as 'Best Average Grade'
     FROM (
     SELECT p.name as Program,
     st.name as Student,
     AVG(sc.grade_assig + sc.grade_test + sc.grade_project) DIV 3 as Grade
     FROM program p
     INNER JOIN course co ON (p.program_id = co.program_id)
     INNER JOIN class cl ON (co.course_id = cl.course_id)
     INNER JOIN student_class sc ON (cl.class_id = sc.class_id)
     INNER JOIN student st ON (st.student_id = sc.student_id)
     GROUP BY p.program_id, st.student_id
     ORDER BY Grade DESC
     ) t
     GROUP BY t.Program;
    */
    func studentsByBestAverage() -> String {
        var report = ""
        for p in college.getPrograms() {
            let program = p.getName()
            let bestAverage = getAverageGradeByProgram(p)
            report += "Program: \(program) \(bestAverage)\n"
        }
        return report
    }
    
    func getAverageGradeByProgram(_ program: Program) -> String {
        var sumOfGrades = 0
        var student = ""
        var bestGrade = 0
        for sc in college.getStudentClasses() {
            if sc.getClasse().getCourse().getProgram().getProgramId() == program.getProgramId() {
                if sc.getGradeAssig() != nil && sc.getGradeTest() != nil && sc.getGradeProject() != nil {
                    sumOfGrades = (sc.getGradeAssig()! + sc.getGradeTest()! + sc.getGradeProject()!) / 3
                }
            }
            if (bestGrade < sumOfGrades) {
                bestGrade = sumOfGrades
                student = sc.getStudent().getName()
            }
        }
        return "Student: \(student) Best Average Grade: \(bestGrade)"
    }

}
