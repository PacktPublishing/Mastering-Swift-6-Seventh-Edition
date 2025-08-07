import Foundation

struct MyPoint {
    var x = 0
    var y = 0
}

extension MyPoint {
    static func + (left: MyPoint, right: MyPoint) -> MyPoint {
        return MyPoint(x: left.x + right.x, y: left.y + right.y)
    }
    static func += (left: inout MyPoint, right: MyPoint) {
        left.x += right.x
        left.y += right.y
    }
    static prefix func -(point: MyPoint) -> MyPoint {
        return MyPoint(x: -point.x, y: -point.y)
    }
}

print("---Operator Methods---")
let firstPoint = MyPoint(x: 1, y: 4)
let secondPoint = MyPoint(x: 5, y: 10)
var combined = firstPoint + secondPoint
print("\(combined.x), \(combined.y)")
combined += firstPoint
print("\(combined.x), \(combined.y)")
let inverse = -combined
print("\(inverse.x), \(inverse.y)")
