import Foundation

enum Product {
    case Book(Double, Int, Int)
    case Puzzle(Double, Int)
}

func testAssociatedValues() {

    var product = getProduct()
    
    switch product {
    case .Book(let price, let year, let pages):
        print("Product was published in \(year) for the price of \(price) and has \(pages) pages")
    case .Puzzle(let price, let pieces):
        print("Product is a puzzle with \(pieces) pieces and sells for \(price)")
    }

}

func getProduct() -> Product {
    if Bool.random() {
        return Product.Book(49.99, 2024, 394)
    } else {
        return Product.Puzzle(9.99, 200)
    }
}

testAssociatedValues()


enum ProductWithLabels {
    case Book(price: Double, yearPublished: Int, pageCount: Int)
    case Puzzle(price: Double, pieceCount: Int)
}

let masterSwift = ProductWithLabels.Book(price: 49.99, yearPublished: 2024, pageCount: 394)



