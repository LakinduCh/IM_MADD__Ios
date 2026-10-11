
var middleName: String? = "Nimal"
print(middleName as Any)

middleName = nil
print(middleName as Any)

let validNumber = Int("25")
let invalidNumber = Int("Hello")
print(validNumber as Any)
print(invalidNumber as Any)

var forceName: String? = "Kamal"
print(forceName!)

var emptyName: String? = nil

var studentName: String? = "Kamal"

if let name = studentName {
    print("Student Name: \(name)")
} else {
    print("Student name is not available")
}

studentName = nil

if let name = studentName {
    print("Student Name: \(name)")
} else {
    print("Student name is not available")
}

var firstName: String? = "Kamal"
var lastName: String? = "Perera"

if let first = firstName, let last = lastName {
    print("Full Name: \(first) \(last)")
} else {
    print("Complete name is not available")
}

lastName = nil

if let first = firstName, let last = lastName {
    print("Full Name: \(first) \(last)")
} else {
    print("Complete name is not available")
}

var nickname: String? = nil
let displayName = nickname ?? "No Nickname"
print(displayName)

nickname = "Kama"
let updatedDisplayName = nickname ?? "No Nickname"
print(updatedDisplayName)

lastName = "Perera"
var email: String? = nil

if let first = firstName, let last = lastName {
    print("Full Name: \(first) \(last)")
}
print("Email: \(email ?? "Not Provided")")