import Cocoa

struct MathTable {
    var num: Int
    subscript(multiply index: Int) -> Int {
        return num * index
    }
    subscript(add index: Int) -> Int {
        return num + index
    }
}

var mathTable = MathTable(num: 2)

mathTable[multiply: 5]
mathTable[add: 4]
