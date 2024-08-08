//
//  Calculator.swift
//  Calculator
//
//  Created by Jon Hoffman on 8/7/24.
//

import Foundation

struct Calculator {
    static func addition(_ one: Double, _ two: Double) -> Double {
        one + two
    }
    
    static func subtract(_ one: Double, _ two: Double) -> Double {
        one - two
    }
    
    static func multiply(_ one: Double, _ two: Double) -> Double {
        one * two
    }
    static func divide(_ one: Double, _ two: Double) -> Double {
        one / two
    }
}

struct SomeType {
    private(set) var someProperty = 42
}
