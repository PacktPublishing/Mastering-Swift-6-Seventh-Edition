import Cocoa

var greeting = "Hello, playground"

extension String {
    subscript(index: Int) -> Character? {
        guard index >= 0 && index < self.count else {
            return nil
        }
        return self[self.index(self.startIndex, offsetBy: index)]
    }
}

let myString = "Hello World"
var char = myString[3]

