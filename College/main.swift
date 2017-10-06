//
//  main.swift
//  College
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

var college = College()

var employees: [Employee] = []
employees.append(Employee(1, "John", college.getFunctions()[1], "2016-02-01", ""))
employees.append(Employee(1, "Mary", college.getFunctions()[2], "2016-02-01", ""))

college.setEmployees(employees)


func TestEmployeeFunction() {
    print("")
}

func instructorsByClasses() {
    
}

func studentsByCountry() {
    
}

func coursesByWorstAverage() {
    
}

func classesByInscructorsPerWeek() {
    
}

func studentsByBestAverage() {
    
}

/*
Reports
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
 
 - Number of students by country
 
 SELECT c.name as 'Country',
 COUNT(s.student_id) as 'Number of Students'
 FROM country c INNER JOIN student s ON (c.country_id = s.origincountry_id)
 GROUP BY c.country_id
 ORDER BY count(s.student_id) DESC;
 
 - Top 3 courses with worst average grades
 
 SELECT co.name as 'Course',
 AVG(sc.grade_assig + sc.grade_test + sc.grade_project) DIV 3 as Grade
 FROM course co INNER JOIN class cl ON (co.course_id = cl.course_id)
 INNER JOIN student_class sc ON (cl.class_id = sc.class_id)
 WHERE sc.grade_project is not null
 GROUP BY co.course_id
 ORDER BY Grade ASC
 LIMIT 3;
 
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

