import Foundation

struct MyStruct {
    var myProperty: String {
        willSet(newName) {
            print("Preparing to change the value of myProperty from \(myProperty) to \(newName)")
        }
        didSet {
            if oldValue != myProperty {
                print("The value of myProperty changed from \(oldValue) to \(myProperty)")
            }
        }
    }
}

func testObserver() {
    var prop = MyStruct(myProperty: "hello")
    prop.myProperty = "new"
}


testObserver()
