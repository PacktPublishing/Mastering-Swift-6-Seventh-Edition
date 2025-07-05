//
//  Project_Test.swift
//  Project_Test
//
//  Created by Jon Hoffman on 8/7/24.
//

import Testing

struct Project_Test {

    @Test func myTest() {
        // Test code here
    }
    
    @Test func validExpectation() async throws {
        #expect(1 == 1)
    }
    
    @Test func invalidExpectation() async throws {
        #expect(1 == 2)
    }
    
    @Test func requireTest() async throws {
        let one: Int? = 10
        let two: String? = nil

        let willSucceed = try #require(one)
        let willFail = try #require(two)
    }
    
    @Test
    func testRandomArrayCountInRange() async throws {
        let range = 5...10
        let count = Int.random(in: 0...15)
        let values = Array(repeating: "Item", count: count)

        await confirmation(expectedCount: range) { confirm in
            for _ in values {
                confirm()
            }
        }
    }
    
    @Test
    func testDivisionByZeroTriggersFailure() async throws {
        await #expect(processExitsWith: .failure) {
            let numerator = 42
            let denominator = Int.random(in: 0...1)
            precondition(denominator != 0, "Cannot divide by zero")
            let _ = numerator / denominator
        }
    }

}

struct Project_Test2 {
    
    @Test func myTest() {
        // Test code here
    }
}

@Suite("Suite Example")
struct Project_Test3 {
    
    @Test func myTest() {
        // Test code here
    }
}
