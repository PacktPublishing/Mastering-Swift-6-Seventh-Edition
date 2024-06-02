import Cocoa

@propertyWrapper
struct ValidateRange {
    private var value: Int
    private let range: ClosedRange<Int>
    
    var wrappedValue: Int {
        get { value }
        set { value = max(range.lowerBound, min(range.upperBound, newValue)) }
    }

    init(wrappedValue: Int, _ range: ClosedRange<Int>) {
        self.value = max(range.lowerBound, min(range.upperBound, wrappedValue))
        self.range = range
    }
}

struct Item {
    @ValidateRange(1...100) var quantity = 5
}

func testRangeValidation() {
    var item = Item(quantity: 10)
    print(item.quantity)
    item.quantity = 1000
    print(item.quantity)
}
testRangeValidation()
