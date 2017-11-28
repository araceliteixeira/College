//
//  main.swift
//  College
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

var reports = CollegeReports()

print("Instructors by classes and average student grades")
print(reports.instructorsByClasses())
print("")

print("Number of students by country")
print(reports.studentsByCountry())
print("")

print("Top 3 courses with worst average grades")
print(reports.coursesByWorstAverage())
print("")

print("Number of classes per instructor per weekday")
print(reports.classesByInscructorsPerWeek())
print("")

print("Top student with best average grade by program")
print(reports.studentsByBestAverage())
print("")

//reports.college.createJsonFiles()
