import Cocoa

var greeting = "Hello, playground"

func addOne(_ number: Int) -> Int {
    return number + 1
}

func double(_ number: Int) -> Int {
    return number * 2
}

func toString(_ number: Int) -> String {
    String(number)
}

infix operator >>>

func >>> <A, B, C>(lhs: @escaping (A) -> B, rhs: @escaping (B) -> C) -> (A) -> C {
    return { rhs(lhs($0)) }
}

let addOneToString = addOne >>> toString
let doubleToString = double >>> toString

func addOneToStringFunc(_ number: Int) -> String {
    toString(addOne(number))
}

let result1 = addOneToStringFunc(3)
let result2 = addOneToString(3)
let result3 = doubleToString(3)

