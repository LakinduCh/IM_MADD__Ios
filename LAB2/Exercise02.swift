
var towns: Set = ["Malabe", "Kandy", "Galle"]
print(towns)                      

towns.insert("Jaffna")
towns.insert("Kandy")
print(towns)
print(towns.count)

print(towns.contains("Kandy"))
print(towns.contains("Colombo"))

towns.remove("Galle")
print(towns)

let swiftClass: Set = ["Amal", "Nimali", "Ruwan"]
let kotlinClass: Set = ["Nimali", "Ruwan", "Sanduni"]

print(swiftClass.union(kotlinClass).sorted())
print(swiftClass.intersection(kotlinClass).sorted())
print(swiftClass.subtracting(kotlinClass).sorted())
print(swiftClass.symmetricDifference(kotlinClass).sorted())

let mobileDevelopmentStudents: Set = ["Amal", "Nimali", "Ruwan", "Sanduni"]
let gameTechnologyStudents: Set = ["Ruwan", "Sanduni", "Kasun", "Dilini"]

print("All students: \(mobileDevelopmentStudents.union(gameTechnologyStudents).sorted())")
print("Taking both modules: \(mobileDevelopmentStudents.intersection(gameTechnologyStudents).sorted())")
print("Only Mobile Development: \(mobileDevelopmentStudents.subtracting(gameTechnologyStudents).sorted())")
print("Only one module: \(mobileDevelopmentStudents.symmetricDifference(gameTechnologyStudents).sorted())")