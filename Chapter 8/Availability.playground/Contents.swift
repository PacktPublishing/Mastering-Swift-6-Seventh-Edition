import UIKit

var greeting = "Hello, playground"

if #available(iOS 16.0, OSX 14.10, watchOS 9, *) {
    //Available for iOS 16, OSX 14.10, watchOS 9 or above
    print("Minimum requirements met")
} else {
    //Block on anything below the above minimum requirements
    print("Minimum requirements not met")
}


@available(iOS 16.0, *)
    func testAvailability() {
        // Function only available for iOS 16 or above
}

@available(iOS 16.0, *)
    struct TestStruct {
        // Type only available for iOS 16 or above
}

if #available(iOS 16.0, *) {
    testAvailability()
} else {
    // Fallback on earlier versions
}
