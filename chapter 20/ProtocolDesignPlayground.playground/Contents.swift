import Foundation

protocol Nameable {
    var firstName: String { get }
    var middleName: String? { get }
    var lastName: String { get }
}

protocol Contactable {
    var emailAddress: String { get }
    var phoneNumber: String { get }
}

protocol Person: Nameable, Contactable {
    var birthDate: Date { get }
    var age: Int { get }
    func displayInfo()
}

protocol Pet: Nameable {
    var numberOfLegs: Int { get }
}

extension Person {
    var age: Int {
        let now = Calendar.current
        let components = now.dateComponents([.year], from: birthDate, to: Date.now)
        return components.year ?? 0
    }
    
    func displayInfo() {
        print("Contact Information for \(firstName) \(lastName)")
        print("   Email:  \(emailAddress)")
        print("   Phone Number;  \(phoneNumber)")
    }
}



protocol Occupation {
    var occupationName: String { get set }
    var yearlySalary:Double { get set }
    var experienceYears: Double { get set}
}


struct Employee: Person, Occupation {
    var firstName: String
    var middleName: String?
    var lastName: String
    var birthDate: Date
    var emailAddress: String
    var phoneNumber: String
    var occupationName: String
    var yearlySalary: Double
    var experienceYears: Double
    
    func displayInfo() {
        //Display Employee Information
    }
    
}

struct Consultant: Person {
    var firstName: String
    var middleName: String?
    var lastName: String
    var birthDate: Date
    var emailAddress: String
    var phoneNumber: String
    
    func displayInfo() {
        //Display Consultant Information
    }
}

struct Dog: Pet {
    var numberOfLegs: Int
    
    var firstName: String
    var middleName: String?
    var lastName: String
}
