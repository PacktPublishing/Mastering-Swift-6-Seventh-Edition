import Foundation

var greeting = "Hello, playground"

let guests = ["Jon", "Heidi", "Kailey", "Kai"]

guests.map { name in
    print("Hello \(name)")
}

guests.map {print("Hello \($0)")}


var messages = guests.map {
    (name:String) -> String in
    return "Welcome \(name)"
}


let greetGuest = { (name:String) -> Void in
    print("Hello guest named \(name)")
}
let sayGoodbye = { (name:String) -> Void in
    print("Goodbye \(name)")
}

guests.map(greetGuest)
guests.map(sayGoodbye)


let greetGuest2 = {
    (name:String) -> Void in
    if (name.hasPrefix("K")) {
        print("\(name) is on the guest list")
    } else {
        print("\(name) was not invited")
    }
}

guests.map(greetGuest2)


