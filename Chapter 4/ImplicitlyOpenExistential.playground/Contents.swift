import Foundation

protocol Drawable {
    func draw()
}

struct Circle: Drawable {
    func draw() {
        print("Drawing a circle")
    }
}

struct Square: Drawable {
    func draw() {
        print("Drawing a square")
    }
}

func drawAll(_ items: [any Drawable]) {
    for item in items {
        item.draw()
    }
}

func testExistential() {
    let shapes: [any Drawable] = [Circle(), Square()]
    drawAll(shapes)
}

testExistential()
