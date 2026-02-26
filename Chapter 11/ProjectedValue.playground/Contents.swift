import Foundation

var greeting = "Hello, playground"

struct Person {
    var name: String
    @DateFormat var birthDate: Date
}

@propertyWrapper
struct DateFormat {
    var wrappedValue: Date
    
    init(wrappedValue: Date) {
        self.wrappedValue = wrappedValue
    }
    
    var projectedValue: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: wrappedValue)
    }
}


func runExample() {
    let baby = Person(name: "Jon", birthDate: Date())
    print(baby.birthDate)
    print(baby.$birthDate)
}

runExample()
