// Exercise 01: Arrays\

var marks = [72, 65, 48, 90, 55]
print(marks)

print(marks[0])
print(marks[2])
print(marks[4])

print(marks.count)
print(marks.isEmpty)
print(marks.first as Any)  
print(marks.last as Any)

marks[2] = 52
print(marks)

marks.append(88)
marks.insert(60, at: 1)
print(marks)

marks.removeLast()
marks.remove(at: 1)
print(marks)

let examMarks = [72, 65, 48, 90, 55]

print(examMarks.max()!)
print(examMarks.min()!)
print(examMarks.contains(90))
print(examMarks.sorted())
print(examMarks.sorted(by: >))

let total = examMarks.reduce(0, +)
print(total)

let average = Double(total) / Double(examMarks.count)
print(average)

var modules = ["SE4041", "Game Design", "3D Animation", "Interactive Media Project", "Research Methods"]

print("Modules: \(modules)")
print("First module: \(modules.first ?? "None")")
print("Last module: \(modules.last ?? "None")")

modules.append("Cyber Security")
print("Number of modules: \(modules.count)")
print("Studying SE4041: \(modules.contains("SE4041"))")