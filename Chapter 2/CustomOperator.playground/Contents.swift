import Cocoa

infix operator •
prefix operator ••

struct MyPoint {
    var x = 0
    var y = 0
}

extension MyPoint {
    static func • (left: MyPoint, right: MyPoint) -> MyPoint {
        return MyPoint(x: left.x * right.x, y: left.y * right.y)
    }
    
    static prefix func •• (point: MyPoint) -> MyPoint {
        return MyPoint(x: point.x * point.x, y: point.y * point.y)
    }
}

print("---custom operators---")
let customFirstPoint = MyPoint(x: 1, y: 4)
let customSecondPoint = MyPoint(x: 5, y: 10)
let multiplied = customFirstPoint • customSecondPoint
print("\(multiplied.x), \(multiplied.y)")
let squared = ••customSecondPoint
print("\(squared.x), \(squared.y)")
