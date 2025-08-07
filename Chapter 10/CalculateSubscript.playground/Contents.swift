import Foundation

struct MathTable {
    var num: Int
    subscript(index: Int) -> Int {
        return num * index
    }
}

var mathTable = MathTable(num: 5)
print(mathTable[4])

