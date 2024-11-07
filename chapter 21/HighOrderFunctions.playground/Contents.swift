import Cocoa

var greeting = "Hello, playground"

func add(_ first: UInt, _ second: UInt) -> UInt {
    first + second
}

func subtract(_ first: UInt, _ second: UInt) -> UInt {
    first - second
}

func performMathOperation(_ first: UInt, _ second: UInt, function: (UInt, UInt) -> UInt) -> UInt {
    function(first, second)
}


let result = performMathOperation(8, 4, function: subtract)


