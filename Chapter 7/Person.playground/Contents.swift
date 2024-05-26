import Cocoa

struct Person {
    var firstName: String
    var lastName: String
    var age: Int
}

func testPerson() {
    let person = Person(firstName: "Jon", lastName: "Hoffman", age: 55)
    let mirror = Mirror(reflecting: person)
    
    for (label, value) in mirror.children {
        print("Property: \(label ?? "Unknown"), Value: \(value)")
    }

    print("Display Style: \(mirror.displayStyle)")
    print("Subject Type: \(mirror.subjectType)")
}

testPerson()
