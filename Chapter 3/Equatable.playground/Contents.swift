import Cocoa

struct Name: Equatable {
    var firstName = ""
    var lastName = ""
    static func == (lhs: Name, rhs: Name) -> Bool {
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName
    }
}

func testEquatable() {
    let name1 = Name(firstName: "Jon", lastName: "Hoffman")
    let name2 = Name(firstName: "John", lastName: "Hoffman")
    let name3 = Name(firstName: "Jon", lastName: "Hoffman")
    
    print("name1 == name2: \(name1 == name2)")
    print("name1 == name3: \(name1 == name3)")
}

struct Name2: Equatable {
    var firstName = ""
    var lastName = ""

}

func testEquatable2() {
    let name1 = Name2(firstName: "Jon", lastName: "Hoffman")
    let name2 = Name2(firstName: "John", lastName: "Hoffman")
    let name3 = Name2(firstName: "Jon", lastName: "Hoffman")
    
    print("name1 == name2: \(name1 == name2)")
    print("name1 == name3: \(name1 == name3)")
}

print("---First Equatable Example---")
testEquatable()

print("---Second Equatable Example---")
testEquatable2()
