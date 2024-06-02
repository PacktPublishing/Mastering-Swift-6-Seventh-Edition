import Cocoa

struct MathTable {
    var num: Int
    subscript(index: Int) -> Int {
        return num * index
    }
}

var mathTable = MathTable(num: 2)
mathTable[5]

