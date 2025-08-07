import Foundation

@propertyWrapper
struct MyPropertyWrapper<T> {
    private var value: T

    var wrappedValue: T {
        get { /* return the value */
            value
        }
        set { /* modify the value */ }
    }

    init(wrappedValue initialValue: T) {
        self.value = initialValue
    }
}

struct MyPropertyWrapperExample {
    @MyPropertyWrapper var number: Int

    init(number: Int) {
        self.number = number
    }
}


