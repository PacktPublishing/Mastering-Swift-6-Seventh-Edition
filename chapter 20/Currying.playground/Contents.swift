import Cocoa

var greeting = "Hello, playground"

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}



func curriedAdd(_ a: Int) -> (Int) -> Int {
    return { a + $0 }
}

let addTwo = curriedAdd(2)
let result = addTwo(3)


let addThree = curriedAdd(3)
