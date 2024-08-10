import Cocoa

var greeting = "Hello, playground"

func factorial(_ n: Int) -> Int {
    if n <= 1 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}


let result = factorial(4)
