// Exercise 04

let mark = 68

if mark >= 75 {
    print("Distinction")
} else if mark >= 50 {
    print("Pass")
} else {
    print("Fail")
}

let attendance = 78

if attendance >= 90 {
    print("Excellent attendance")
} else if attendance >= 80 {
    print("Good attendance")
} else if attendance >= 70 {
    print("Acceptable attendance")
} else {
    print("Low attendance")
}

for value in [95, 85, 75, 60] {
    if value >= 90 {
        print("\(value): Excellent attendance")
    } else if value >= 80 {
        print("\(value): Good attendance")
    } else if value >= 70 {
        print("\(value): Acceptable attendance")
    } else {
        print("\(value): Low attendance")
    }
}