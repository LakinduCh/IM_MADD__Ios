// Exercise 06

enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

struct Student {
    var name: String
    var mark: Int
    var registered: Bool = true

    var grade: Grade {
        switch mark {
        case 75...100:
            return .a
        case 65..<75:
            return .b
        case 50..<65:
            return .c
        default:
            return .f
        }
    }

    func displayDetails() {
        print("\(name) received \(mark)")
    }
}

let amal = Student(name: "Amal", mark: 72)
print(amal.name)
print(amal.mark)
print(amal.registered)
print(amal.grade.rawValue)

let kamal = Student(name: "Kamal", mark: 75)
kamal.displayDetails()

struct Rectangle {
    var width: Double
    var height: Double

    var area: Double {
        return width * height
    }
}

let rectangle = Rectangle(width: 4, height: 3)
print(rectangle.area)

struct Counter {
    var count = 0

    mutating func increment() {
        count += 1
    }
}

var counter = Counter()
counter.increment()
counter.increment()
print(counter.count)

class Lecturer {
    var name: String
    var module: String

    init(name: String, module: String) {
        self.name = name
        self.module = module
    }

    func introduce() {
        print("\(name) teaches \(module)")
    }
}

let lecturer = Lecturer(name: "Nushkan", module: "SE4041")
lecturer.introduce()

struct Point {
    var x = 0
}

let firstPoint = Point()
var secondPoint = firstPoint
secondPoint.x = 99

print(firstPoint.x)
print(secondPoint.x)

class CounterClass {
    var count = 0
}

let firstCounter = CounterClass()
let secondCounter = firstCounter
secondCounter.count = 99

print(firstCounter.count)
print(secondCounter.count)