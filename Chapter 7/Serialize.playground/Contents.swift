import Foundation


struct Person {
    var firstName: String
    var lastName: String
    var age: Int
}

func serialize<T>(_ value: T) -> [String: Any] {
    let mirror = Mirror(reflecting: value)
    var result = [String: Any]()

    for child in mirror.children {
        if let propertyName = child.label {
            result[propertyName] = child.value
        }
    }

    return result
}

func testSerialize() {
    let person = Person(firstName: "Jon", lastName: "Hoffman", age: 55)
    let serializedPerson = serialize(person)
    print(serializedPerson)
}

testSerialize()
