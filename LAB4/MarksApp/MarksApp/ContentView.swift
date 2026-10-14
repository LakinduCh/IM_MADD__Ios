import SwiftUI

struct ContentView: View {
    @State private var students: [Student] = []
    @State private var studentID = ""
    @State private var studentName = ""
    @State private var markText = ""
    @State private var errorMessage = ""

    var passedCount: Int {
        students.filter { $0.passed }.count
    }

    var body: some View {
        NavigationStack {
            VStack {
                TextField("Student ID (e.g. IT23251182)", text: $studentID)
                    .textFieldStyle(.roundedBorder)
                    .textInputAutocapitalization(.characters)

                TextField("Full Name", text: $studentName)
                    .textFieldStyle(.roundedBorder)

                TextField("Score (0 - 100)", text: $markText)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numberPad)

                if !errorMessage.isEmpty {
                    Label(errorMessage, systemImage: "exclamationmark.triangle.fill")
                        .font(.footnote)
                        .foregroundStyle(.red)
                }

                Button("Save Record") {
                    addStudent()
                }
                .buttonStyle(.borderedProminent)

                Text("Passed Students: \(passedCount) of \(students.count)")
                    .font(.headline)
                    .padding(.top)

                List(students) { student in
                    NavigationLink {
                        StudentDetailView(student: student)
                    } label: {
                        HStack {
                            VStack(alignment: .leading) {
                                Text(student.name)
                                if !student.studentID.isEmpty {
                                    Text(student.studentID)
                                        .font(.caption)
                                        .foregroundStyle(.secondary)
                                }
                            }
                            Spacer()
                            Text("\(student.mark) (\(student.passed ? "Pass" : "Fail"))")
                                .bold()
                                .foregroundStyle(student.passed ? .green : .red)
                        }
                    }
                }
            }
            .padding()
            .navigationTitle("SE4041 Marks")
        }
    }

    func addStudent() {
        let name = studentName.trimmingCharacters(in: .whitespaces)

        guard !name.isEmpty else {
            errorMessage = "Name cannot be empty."
            return
        }
        guard let mark = Int(markText) else {
            errorMessage = "Score must be a whole number."
            return
        }
        guard mark >= 0 && mark <= 100 else {
            errorMessage = "Score must be between 0 and 100."
            return
        }

        let id = studentID.trimmingCharacters(in: .whitespaces)
        students.append(Student(studentID: id, name: name, mark: mark))

        errorMessage = ""
        studentID = ""
        studentName = ""
        markText = ""
    }
}

#Preview {
    ContentView()
}
