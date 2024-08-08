import Cocoa

var greeting = "Hello, playground"

let clos1 = { () -> Void in
    print("Hello World")
}

clos1()


let clos2 = {
    (name: String) -> Void in
    print("Hello \(name)")
}

clos2("Jon")


func testClosure(handler: (String) -> Void) {
    handler("Luna")
}

testClosure(handler: clos2)

let clos3 = {
    (name: String) -> String in
    return "Hello \(name)"
}


var message = clos3("Maple")
