import Cocoa

struct GradeValueType {
    var name: String
    var assignment: String
    var grade: Int
}


class GradeReferenceType {
    var name: String
    var assignment: String
    var grade: Int
    init(name: String, assignment: String, grade: Int) {
        self.name = name
        self.assignment = assignment
        self.grade = grade
    }
}

func extraCreditReferenceType(ref: GradeReferenceType, extraCredit: Int) {
    ref.grade += extraCredit
}


func getGradeForAssignment(assignment: inout GradeValueType) {
    // Code to get grade from DB
    // Random code here to illustrate issue
    let num = Int.random(in: 80..<100)
    assignment.grade = num
    print("Grade for \(assignment.name) is \(num)")
}

func testInOut() {
    var mathGrades = [GradeValueType]()
    var students = ["Jon", "Kailey", "Kai"]
    var mathAssignment = GradeValueType(name: "", assignment: "Math Assignment", grade: 0)

    for student in students {
        mathAssignment.name = student
        getGradeForAssignment(assignment: &mathAssignment)
        mathGrades.append(mathAssignment)
    }

    for assignment in mathGrades {
        print("\(assignment.name): grade \(assignment.grade)")
    }
}

testInOut()
