import Foundation

func showBinaryWithInitializer() {
    let en = 42
    print(String(en, radix:2))
    print(String(53, radix:2))
    print(String(123456, radix:2))
}

func showBinaryWithBinaryIntegerExtension() {
    print(53.binaryFormat(2))
    print(230.binaryFormat(2))
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

print("---Binary with Initializer---")
showBinaryWithInitializer()

print("---Binary with Binary Integer Extension---")
showBinaryWithBinaryIntegerExtension()
