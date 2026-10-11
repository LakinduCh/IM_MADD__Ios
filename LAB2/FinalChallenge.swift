// FinalChallenge.swift
var studentMarks: [String: Int] = [
    "Amal": 72,
    "Nimali": 45,
    "Ruwan": 68,
    "Sanduni": 90,
    "Kasun": 38
]

var passedStudents: [String] = []
var gradesAwarded: Set<String> = []
var passCount = 0
var failCount = 0

let sortedNames = studentMarks.keys.sorted()

print("==================================")
print("      STUDENT PERFORMANCE")
print("==================================")
print("")

for name in sortedNames {
    let mark = studentMarks[name] ?? 0

    let grade: String
    switch mark {
    case 80...100: grade = "A"
    case 75..<80:  grade = "A-"
    case 70..<75:  grade = "B+"
    case 65..<70:  grade = "B"
    case 60..<65:  grade = "B-"
    case 55..<60:  grade = "C+"
    case 45..<55:  grade = "C"
    case 40..<45:  grade = "C-"
    case 0..<40:   grade = "F"
    default:       grade = "Invalid"
    }
    gradesAwarded.insert(grade)

    if mark >= 50 {
        passedStudents.append(name)
        passCount += 1
    } else {
        failCount += 1
    }

    print("\(name) - \(mark) - \(grade)")
}

print("")
print("----------------------------------")
print("")

print("Passed Students:")
for name in passedStudents {
    print(name)
}

print("")
print("----------------------------------")
print("")

print("Grades Awarded:")
for grade in gradesAwarded.sorted() {
    print(grade)
}

print("")
print("----------------------------------")
print("")

let total = studentMarks.values.reduce(0, +)
let average = Double(total) / Double(studentMarks.count)

let highest = studentMarks.values.max() ?? 0
let lowest = studentMarks.values.min() ?? 0

print("Class Average: \(average)")
print("Highest Mark: \(highest)")
print("Lowest Mark: \(lowest)")

print("")
let searchName = "Amal"
if let mark = studentMarks[searchName] {
    print("\(searchName)'s mark is \(mark)")
} else {
    print("Student not found")
}

print("Passed: \(passCount)")
print("Failed: \(failCount)")