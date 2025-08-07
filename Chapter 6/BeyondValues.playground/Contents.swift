import Foundation

protocol Describable {
    func description() -> String
}

enum Priority: Describable {
    case low, medium, high, critical
    
    func description() -> String {
        switch self {
        case .low:
            "Low Priority"
        case.medium:
            "Medium Priority"
        case .high:
            "High Priority"
        case .critical:
            "Critical Priority"
        }
    }
    
    var isHigh: Bool {
        self == .high || self == .critical
    }

}

enum TrafficLight: Describable {
    case red
    case yellow
    case green
    
    func description() -> String {
        switch self {
        case .red:
            return "Stop"
        case .yellow:
            return "Proceed with caution"
        case .green:
            return "Go"
        }
    }
}

struct person: Describable {
    var firstName: String
    var lastName: String
    
    func description() -> String {
        "\(firstName) \(lastName)"
    }
}

func testPriority() {
    let priority = Priority.high
    print("This is a \(priority.description()) and needs to be done now \(priority.isHigh)")
}

func testDescribable() {
    let describe:[any Describable] = [TrafficLight.green, Priority.high, person(firstName: "Jon", lastName: "Hoffman")]
    for item in describe {
        print("Description: \(item.description())")
    }
}

testPriority()
testDescribable()
