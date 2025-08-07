import Foundation

var greeting = "Hello, playground"

open class OpenClass {
    open var openProperty: Int

    init(openProperty: Int) {
        self.openProperty = openProperty
    }

    open func openMethod() { }
}


public struct PublicStruct {
    public var publicProperty: String
    public func publicMethod() { }
}

struct InternalStruct {
    var internalProperty: Double
    func internalMethod() { }
}

fileprivate struct FilePrivateStruct {
    var filePrivateProperty: Bool
    func filePrivateMethod() { }
}

struct myStruct {
    private var privateProperty: Int
    private func privateMethod() { }
}

public enum Direction {
    case north
    case south
    case east
    case west
}


struct SampleStruct {
    private(set) var count = 0
    
    mutating func doSomething() {
        count += 1
    }
}

var test = SampleStruct()
test.doSomething()
test.doSomething()
print(test.count)
