import Cocoa

enum Product {
    case Book(Double, Int, Int)
    case Puzzle(Double, Int)
}

func testAssociatedValues() {
    let masterSwift = Product.Book(49.99, 2024, 394)
    let worldPuzzle = Product.Puzzle(9.99, 200)
    
    switch masterSwift {
    case .Book(let price, let year, let pages):
        print("Mastering Swift was published in \(year) for the price of \(price) and has \(pages) pages")
    case .Puzzle(let price, let pieces):
        print("Mastering Swift is a puzzle with \(pieces) pieces and sells for \(price)")
    }
    
    switch worldPuzzle {
    case .Book(let price, let year, let pages):
        print("World Puzzle was published in \(year) for the price of \(price) and has \(pages) pages")
    case .Puzzle(let price, let pieces):
        print("World Puzzle is a puzzle with \(pieces) pieces and sells for \(price)")
    }
}

testAssociatedValues()


enum ProductWithLabels {
    case Book(price: Double, yearPublished: Int, pageCount: Int)
    case Puzzle(price: Double, pieceCount: Int)
}

let masterSwift = ProductWithLabels.Book(price: 49.99, yearPublished: 2024, pageCount: 394)
