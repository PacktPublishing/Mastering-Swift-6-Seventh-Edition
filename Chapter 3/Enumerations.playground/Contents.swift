import Foundation

protocol Describable {
    var description: String { get }
}

enum VehicleType: Describable {
    case car, bike

    var description: String {
        switch self {
        case .car:
            return "Vehicle with 4 wheels"
        case .bike:
            return "Vehicle with 2 wheels"
        }
    }
}


struct Vehicle: Describable {
    var description: String
}
