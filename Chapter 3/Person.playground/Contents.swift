import Cocoa

protocol Person {
    var firstName: String { get set }
    var lastName: String { get set }
    var birthDate: Date { get set }
    var profession: String { get }

    init(firstName: String,lastName: String, birthDate: Date)
}



func updatePerson(person: Person) -> Person {
    // Code to update person goes here
    return person
}

struct SwiftProgrammer: Person {
    var firstName: String
    var lastName: String
    var birthDate: Date
    var profession: String
    
    init(firstName: String, lastName: String, birthDate: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
        self.profession = "Swift Developer"
    }
}

struct FootballPlayer: Person {
    var firstName: String
    var lastName: String
    var birthDate: Date
    var profession: String
    
    init(firstName: String, lastName: String, birthDate: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
        self.profession = "Football Player"
    }
}

var myPerson: Person


myPerson = SwiftProgrammer(firstName: "Jon", lastName: "Hoffman", birthDate: Date())
print("\(myPerson.firstName) \(myPerson.lastName)")

myPerson = FootballPlayer(firstName: "Dan", lastName: "Marino", birthDate:Date())
print("\(myPerson.firstName) \(myPerson.lastName)")



let person1 = SwiftProgrammer(firstName: "Jon", lastName: "Hoffman", birthDate: Date())
print("\(myPerson.firstName) \(myPerson.lastName)")
let person2 = FootballPlayer(firstName: "Dan", lastName: "Marino", birthDate:Date())
print("\(myPerson.firstName) \(myPerson.lastName)")

let people = [person1, person2] as [Person]
for person in people {
    print("\(person.firstName) \(person.lastName):\(person.profession)")
}
for person in people {
    if person is SwiftProgrammer {
        print("\(person.firstName) is a Swift Programmer")
    }
}
for person in people {
    if let p = person as? SwiftProgrammer {
        print("\(p.firstName) is a Swift Programmer")
    }
}
for person in people {
    switch person {
        case is SwiftProgrammer:
            print("\(person.firstName) is a Swift Programmer")
        case is FootballPlayer:
            print("\(person.firstName) is a Football Player")
        default:
            print("\(person.firstName) is an unknown type")
    }
}
for person in people where person is SwiftProgrammer {
    print("\(person.firstName) is a Swift Programmer")
}



let me:Person = SwiftProgrammer(firstName: "Jon", lastName: "Hoffman", birthDate: Date())
if me is SwiftProgrammer {
    print("Swift Programmer")
}
if let p = me as? SwiftProgrammer {
    print("\(me.firstName) is a Swift Programmer")
}
