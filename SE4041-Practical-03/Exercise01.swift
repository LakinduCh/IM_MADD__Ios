// Exercise 01

func greet() {
    print("Welcome to SE4041")
}
greet()

func greetStudent(name: String) {
    print("Welcome \(name)")
}
greetStudent(name: "Amal")
greetStudent(name: "Nimali")
greetStudent(name: "Ruwan")

func grade(for mark: Int) -> String {
    if mark >= 50 {
        return "Pass"
    }
    return "Fail"
}
let gradeResult = grade(for: 68)
print(gradeResult)

func calculateAverage(_ a: Double, _ b: Double, _ c: Double) -> Double {
    return (a + b + c) / 3
}
let average = calculateAverage(75, 82, 68)
print(average)

func travel(from town: String, to city: String) {
    print("Travelling from \(town) to \(city)")
}
travel(from: "Malabe", to: "Kandy")

func double(_ number: Int) -> Int {
    return number * 2
}
print(double(10))

func result(_ mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }
    return "Fail"
}
print(result(68))
print(result(68, passMark: 75))

func finalResult(mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }
    return "Fail"
}
print(finalResult(mark: 45))
print(finalResult(mark: 75))
print(finalResult(mark: 75, passMark: 80))