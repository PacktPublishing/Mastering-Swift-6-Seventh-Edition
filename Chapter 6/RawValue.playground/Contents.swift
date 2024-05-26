import Cocoa

enum Direction: Character {
    case North = "N"
    case South = "S"
    case West = "W"
    case East = "E"
}

func testDriection() {
    let myDirection = Direction.North
    print("My direction is: \(myDirection.rawValue)")
}

enum Month: Int {
    case January = 1, February, March, April, May, June, July, August, September, October, November, December
}

func testDefineWithRawValue() {
    if let month = Month(rawValue: 4) {
        print("The month is \(month)")
    }
}

testDriection()
testDefineWithRawValue()
