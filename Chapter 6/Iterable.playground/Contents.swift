import Cocoa

enum DaysOfWeek: String, CaseIterable {
    case Monday = "Mon"
    case Tuesday = "Tues"
    case Wednesday = "Wed"
    case Thursday = "Thur"
    case Friday = "Fri"
    case Saturday = "Sat"
    case Sunday = "Sun"
}


func testIterable() {
    print("All days")
    for day in DaysOfWeek.allCases {
        print("   -- \(day)")
    }
    
    print("Weekdays")
    for weekDay in DaysOfWeek.allCases.filter({ $0 != .Saturday && $0 != .Sunday }) {
        print("   -- \(weekDay).")
    }
    
    print("Index")
    for (index, day) in DaysOfWeek.allCases.enumerated() {
        print("  --\(index): \(day)")
    }
    
    print("Abbreviatios")
    for day in DaysOfWeek.allCases {
        print("   -- \(day.rawValue): \(day) ")
    }
}

testIterable()
