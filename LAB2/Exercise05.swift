// Exercise 05
let grade = "B"

switch grade {
case "A":
    print("Excellent")
case "B", "C":
    print("Good")
case "D":
    print("Needs Work")
default:
    print("Unknown Grade")
}

let mark = 68

switch mark {
case 75...100:
    print("Distinction")
case 50..<75:
    print("Pass")
case 0..<50:
    print("Fail")
default:
    print("Invalid Mark")
}

let temperature = 27

switch temperature {
case ..<0:
    print("Freezing")
case 0...15:
    print("Cold")
case 16...25:
    print("Moderate")
case 26...35:
    print("Warm")
default:
    print("Hot")
}

for reading in [-5, 10, 20, 40] {
    switch reading {
    case ..<0:
        print("\(reading): Freezing")
    case 0...15:
        print("\(reading): Cold")
    case 16...25:
        print("\(reading): Moderate")
    case 26...35:
        print("\(reading): Warm")
    default:
        print("\(reading): Hot")
    }
}