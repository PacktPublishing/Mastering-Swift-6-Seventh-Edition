import Cocoa

func showEndianess() {
    let en = 42
    print("Little-endian representation", en.littleEndian)
    print("Big-endian representation", en.bigEndian)
}


print("---Endianess---")
showEndianess()
