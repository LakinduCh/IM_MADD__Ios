// Exercise 02: Swift Data Types and Type Inference

let studentName = "Kamal"
let studentAge = 22
let gpa = 3.65
let isRegistered = true

print(type(of: studentName))
print(type(of: studentAge))
print(type(of: gpa))
print(type(of: isRegistered))

//student1
let typedName: String = "Kamal"
let typedAge: Int = 22
let typedGpa: Double = 3.65
let typedRegistered: Bool = true
let grade: Character = "A"

// Student2
let studentID: String = "IT23403260"        
let studentFullName = "Lakindu"             
let currentYear: Int = 4
let currentGPA: Double = 3.65
let registeredStatus = true
let finalGrade: Character = "A"

print("Student ID: \(studentID)")
print("Student Name: \(studentFullName)")
print("Year: \(currentYear)")
print("GPA: \(currentGPA)")
print("Registered: \(registeredStatus)")
print("Grade: \(finalGrade)")