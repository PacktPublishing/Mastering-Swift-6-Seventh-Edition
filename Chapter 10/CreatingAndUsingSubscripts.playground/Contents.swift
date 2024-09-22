import Cocoa

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
    var nam = MyNames()
    print(nam[0])  //Displays 'Jon'
    nam[0] = "Buddy"
    print(nam[0])  //Displays 'Buddy'
}

testMyNames()


