import Cocoa

struct Vehicle {
    var speedSamples: InlineArray<4, Int> = [50, 55, 45, 30]
}

let vehicle = Vehicle()
print("Third speed sample: \(vehicle.speedSamples[2])")

