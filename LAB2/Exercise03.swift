// Exercise 03: Dictionaries

var marks = [
    "Amal": 72,
    "Nimali": 65,
    "Ruwan": 48
]
print(marks)                      
print(marks["Amal"] as Any)

print(marks["Amal"] ?? 0)
print(marks["Kasun"] ?? 0)

if let mark = marks["Nimali"] {
    print("Nimali scored \(mark)")
} else {
    print("Student not found")
}

marks["Sanduni"] = 90
marks["Amal"] = 75
marks["Ruwan"] = nil
print(marks)

var phoneBook = [
    "Amal": "0771234567",
    "Nimali": "0712345678",
    "Ruwan": "0753456789",
    "Sanduni": "0724567890"
]

phoneBook["Kasun"] = "0761112223"
phoneBook["Amal"] = "0779998887"
phoneBook["Ruwan"] = nil

// 4. search with if let
let searchName = "Nimali"
if let number = phoneBook[searchName] {
    print("\(searchName): \(number)")
} else {
    print("Contact not found")
}


let missingName = "Dilini"
if let number = phoneBook[missingName] {
    print("\(missingName): \(number)")
} else {
    print("Contact not found")
}

for name in phoneBook.keys.sorted() {
    print("\(name): \(phoneBook[name] ?? "")")
}