import Cocoa

func andOperator(numberOne: Int8, numberTwo: Int8) {
    print("\(numberOne) = \(numberOne.binaryFormat(2))")
    print("\(numberTwo) = \(numberTwo.binaryFormat(2))")
    let andResults = numberOne & numberTwo
    print("\(andResults) = \(andResults.binaryFormat(2))")
}

func orOperator(numberOne: Int8, numberTwo: Int8) {
    print("\(numberOne) = \(numberOne.binaryFormat(2))")
    print("\(numberTwo) = \(numberTwo.binaryFormat(2))")
    let orResults = numberOne | numberTwo
    print("\(orResults) = \(orResults.binaryFormat(2))")
}

func xorOperator(numberOne: Int8, numberTwo: Int8) {
    print("\(numberOne) = \(numberOne.binaryFormat(2))")
    print("\(numberTwo) = \(numberTwo.binaryFormat(2))")
    let xorResults = numberOne ^ numberTwo
    print("\(xorResults) = \(xorResults.binaryFormat(2))")
}

func notOperator(numberOne: Int8) {
    let notResults = ~numberOne
    print("\(notResults) = \(notResults.binaryFormat(2))")
}

func leftShift(numberOne: Int8, amount: Int8) {
    let resultsLeft = numberOne << amount
    print("\(numberOne) \(numberOne.binaryFormat(2))")
    print("<<\(amount) \(resultsLeft.binaryFormat(2))")
}

func rightShift(numberOne: Int8, amount: Int8) {
    let resultsRight = numberOne >> amount
    print("\(numberOne) \(numberOne.binaryFormat(2))")
    print(">>\(amount) \(resultsRight.binaryFormat(2))")
}

func overflow() {
    let add: UInt8 = UInt8.max &+ 1
    let sub: UInt8 = UInt8.min &- 1
    let mul: UInt8 = 42 &* 10
    print("add: \(add): \(add.binaryFormat(2))")
    print("sub: \(sub): \(sub.binaryFormat(2))")
    print("mul: \(mul): \(mul.binaryFormat(2))")

}

extension BinaryInteger {
    func binaryFormat(_ nibbles: Int) -> String {
        var number = self
        var binaryString = ""
        var counter = 0
        let totalBits = nibbles*4
        for _ in (1...totalBits).reversed() {
            binaryString.insert(contentsOf: "\(number & 1)", at:
binaryString.startIndex)
            number >>= 1
            counter += 1
            if counter % 4 == 0 && counter < totalBits {
                binaryString.insert(contentsOf: " ", at: binaryString.startIndex)
            }
        }
        return binaryString
    }
}

print("---And (&) Operator---")
andOperator(numberOne: 42, numberTwo: 11)

print("---Or (|) Operator---")
orOperator(numberOne: 42, numberTwo: 11)

print("---xor (^) Operator---")
xorOperator(numberOne: 42, numberTwo: 11)

print("---not (~) Operator---")
notOperator(numberOne: 42)

print("---shift left (<<) Operator---")
leftShift(numberOne: 24, amount: 1)
leftShift(numberOne: 24, amount: 3)

print("---shift right (>>) Operator---")
rightShift(numberOne: 24, amount: 1)
rightShift(numberOne: 24, amount: 4)

print("---Overflow (&+ &- &*) Operator---")
overflow()
