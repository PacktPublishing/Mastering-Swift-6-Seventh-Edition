import Cocoa

var greeting = "Hello, playground"

func add(_ first: UInt, _ second: UInt) -> UInt {
    first + second
}

func subtract(_ first: UInt, _ second: UInt) -> UInt {
    first - second
}


let mathFunction = add

let result = mathFunction(8, 4)

