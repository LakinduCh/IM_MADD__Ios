# LAB4 – First iOS App (SwiftUI)

**What this lab is about:** building a real iPhone app with SwiftUI: screens, text input,
a list, and navigation between screens.

## What's inside

- `MarksApp/` – the Xcode project. Open `MarksApp/MarksApp.xcodeproj` and run on an iPhone Simulator.
  - `ContentView.swift` – main screen: Student ID, name and score inputs, "Save Record" button,
    error messages, passed-students count and the student list.
  - `Student.swift` – the `Student` model (`Identifiable`) with the pass rule (50+) and grade.
  - `StudentDetailView.swift` – detail screen with name, ID, mark, grade and pass/fail icon.
  - `MarksAppApp.swift` – app entry point.
  - Home-screen name: **Score App**.
- `screenshots/` – screenshots of the running app (add them here).

**How it works:** invalid input (empty name, non-number, score outside 0-100) shows a red
message and nothing is added. Valid students are added to the list and the inputs are cleared.
