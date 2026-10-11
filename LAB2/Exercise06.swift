// Exercise 06

for i in 1...5 {
    print("Week \(i)")
}

let names = ["Amal", "Nimali", "Ruwan"]

for name in names {
    print(name)
}

for (index, name) in names.enumerated() {
    print("\(index): \(name)")
}

var balance = 1000
var week = 0

while balance > 0 {
    balance -= 300
    week += 1
}
print("Ran out in week \(week)")

var attempts = 0

repeat {
    attempts += 1
    print("Attempt \(attempts)")
} while attempts < 3

let markList = [72, -1, 65, 48, 90]

for mark in markList {
    if mark < 0 {
        continue
    }
    if mark == 90 {
        break
    }
    print(mark)
}

let activityMarks = [72, -1, 55, 43, 90, 88]

for mark in activityMarks {
    if mark < 0 {
        continue
    }
    if mark == 90 {
        break
    }
    print(mark)
}

let studentNames = ["Amal", "Nimali", "Ruwan", "Sanduni"]
let studentMarks = [72, 45, 48, 90]

let passMark = 50
var passedStudents: [String] = []

for (index, mark) in studentMarks.enumerated() {
    if mark >= passMark {
        passedStudents.append(studentNames[index])
        print("\(studentNames[index]): \(mark) - Pass")
    } else {
        print("\(studentNames[index]): \(mark) - Fail")
    }
}
print("Passed Students: \(passedStudents)")
