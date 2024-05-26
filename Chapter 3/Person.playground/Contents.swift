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

let me:Person = SwiftProgrammer(firstName: "Jon", lastName: "Hoffman", birthDate: Date())
if me is SwiftProgrammer {
    print("Swift Programmer")
}
if let p = me as? SwiftProgrammer {
    print("\(me.firstName) is a Swift Programmer")
}
