import Foundation

@propertyWrapper
struct Capitalized {
    private var value: String = ""
  
    var wrappedValue: String {
        get { value }
        set { value = newValue.capitalized }
    }

}

struct Person {
  @Capitalized var name: String
  
    init(name: String) {
        self.name = name
    }
}

func testCapitalization() {
    let person = Person(name: "jon hoffman")
    print(person.name)
}

testCapitalization()
