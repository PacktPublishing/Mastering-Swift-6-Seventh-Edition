import Foundation

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

print(mathTable[multiply: 5])
print(mathTable[add: 4])
