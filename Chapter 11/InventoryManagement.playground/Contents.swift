import Cocoa

class Product {
    var name: String
    var price: Double
    var stockLevel: Int {
        didSet {
            if stockLevel < minimumStockLevel {
                print("Stock Level is below minimum for \(name)")
                reorderNotification()
            }
        }
    }
    var minimumStockLevel: Int

    init(name: String, price: Double, stockLevel: Int, minimumStockLevel: Int) {
        self.name = name
        self.price = price
        self.stockLevel = stockLevel
        self.minimumStockLevel = minimumStockLevel
    }

    func reorderNotification() {
        // This function could send an email, an SMS alert, or simply log the information
        print("Alert: Stock for \(name) needs to be reordered.")
    }

    // Simulate a sale which reduces stock
    func sell(units: Int) {
        print("Selling \(units) unit(s) of \(name).")
        stockLevel -= units
    }
}


func testProduct() {
    let book = Product(name: "Mastering Swift", price: 34.99, stockLevel: 7, minimumStockLevel: 5)
    book.sell(units: 1)
    print("Sold one")
    book.sell(units: 1)
    print("Sold another")
    book.sell(units: 1)
    print("Sold a third one")
}

testProduct()
