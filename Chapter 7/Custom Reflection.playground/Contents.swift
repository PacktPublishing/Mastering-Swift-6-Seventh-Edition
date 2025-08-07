import Foundation

struct Person {
    var firstName: String
    var lastName: String
    var userName: String
    var age: Int
    var password: String
}

extension Person: CustomReflectable {
    var customMirror: Mirror{
        let fullName = "\(firstName) \(lastName)"
        return Mirror(self, children: [
            "firstName": firstName,
            "lastName": lastName,
            "userName": userName,
            "fullName": fullName,
            "age": String(age)
        ], displayStyle: .struct)
    }
}

func testPerson() {
    let person = Person(firstName: "Jon", lastName: "Hoffman", userName: "MyUser", age: 55, password: "MyPass123!")
    let mirror = Mirror(reflecting: person)

    for (label, value) in mirror.children {
        print("Property: \(label ?? "Unknown"), Value: \(value)")
    }
    
    print("Display Style: \(mirror.displayStyle!)")
    print("Subject Type: \(mirror.subjectType)")
 
}

testPerson()



