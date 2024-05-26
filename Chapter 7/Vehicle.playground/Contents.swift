import Cocoa

class Vehicle {
    var numberOfWheels:  Int
    
    init(numberOfWheels: Int) {
        self.numberOfWheels = numberOfWheels
    }
}

class Car: Vehicle {
    var numberOfDoors:  Int
    
    init(numberOfDoors: Int) {
        self.numberOfDoors = numberOfDoors
        super.init(numberOfWheels: 4)
    }
}

func testVehicle() {
    let car = Car(numberOfDoors: 4)
    let mirrorCar = Mirror(reflecting: car)

    for (label, value) in mirrorCar.children {
        print("Property: \(label ?? "Unknown"), Value: \(value)")
    }

    print("Display Style: \(mirrorCar.displayStyle)")
    print("Subject Type: \(mirrorCar.subjectType)")

    if let mirrorCarSuper = mirrorCar.superclassMirror {
        print("Super Class: \(mirrorCarSuper.subjectType)")
        
        for (label, value) in mirrorCarSuper.children {
            print("Property: \(label ?? "Unknown"), Value: \(value)")
        }
    }
}


testVehicle()
