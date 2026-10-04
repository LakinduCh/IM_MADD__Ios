
let studentName = "Kamal Perera"
let studentID = "IT21000000"
let moduleCode = "SE4041"
let assignmentMark = 75.0
let examMark = 68.0
var email: String?

email = "kamal@example.com"
let finalMark = assignmentMark * 0.40 + examMark * 0.60

let passed = finalMark >= 50

print("================================")
print("        STUDENT RESULT")
print("================================")
print("")
print("Student Name : \(studentName)")
print("Student ID   : \(studentID)")
print("Module       : \(moduleCode)")
print("")
print("Assignment Mark : \(assignmentMark)")
print("Exam Mark       : \(examMark)")
print("Final Mark      : \(finalMark)")
print("")
print("Passed : \(passed)")
print("")

if let emailAddress = email {
    print("Email : \(emailAddress)")
} else {
    print("Email : Not Provided")
}

var phoneNumber: String?
let attendance = 82
let eligible = finalMark >= 50 && attendance >= 80

print("")
print("Phone: \(phoneNumber ?? "Not Provided")")
print("Fully Eligible: \(eligible)")