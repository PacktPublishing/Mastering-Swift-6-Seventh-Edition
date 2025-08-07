import Foundation

class MyNames {
    private var names = ["Jon", "Kailey", "Kai"]
    subscript(index: Int) -> String {
        get {
            names[index]
        }
        set {
            names[index] = newValue
        }
    }
}

func testMyNames() {
    var name = MyNames()
    print(name[0])  //Displays 'Jon'
    name[0] = "Kailey"
    print(name[0])  //Displays 'Kailey'
}

testMyNames()


