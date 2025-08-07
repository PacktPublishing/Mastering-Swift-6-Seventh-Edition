import Foundation

var greeting = "Hello, playground"


func testFunction(num: Int, handler: () -> Void) {
    for _ in 0..<num {
        handler()
    }
}


let clos = { () -> Void in
    print("Hello from standard syntax")
}
testFunction(num: 5, handler: clos)


testFunction(num: 5, handler: { print("Hello from shorthand closure") })

testFunction(num: 5) {
    print("Hello from Shorthand closure")
}


func testFunction2(num: Int, handler: (_: String) -> Void) {
    for _ in 0..<num {
        handler("Me")
    }
}

testFunction2(num: 5) {  name in
    print("Hello from \(name)")
}

testFunction2(num: 5) {
    print("Hello from \($0)")
}

let clos5: (String, String) -> Void = {
    print("\($0) \($1)")
}

clos5("Hello", "Kai")

let clos6: () -> () = {
    print("Howdy")
}

clos6()

let clos7 = { (first: Int, second: Int) -> Int in first + second }
