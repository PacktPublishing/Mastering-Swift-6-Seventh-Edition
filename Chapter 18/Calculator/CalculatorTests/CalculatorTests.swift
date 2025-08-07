//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by Jon Hoffman on 8/7/24.
//

import Testing
@testable import Calculator

struct TestValues {
    let first: Double
    let second: Double
    let answer: Double
}

@Suite("Calculator test")
struct Calculator_Test {
    
    @Test("Addition Tests", arguments: [
        TestValues(first: 2, second: 3, answer: 5),
        TestValues(first: 10, second: 11, answer: 21),
        TestValues(first: 3.5, second: 4.5, answer: 8)
    ])
    func testAddition(_ values: TestValues) async throws {
        #expect(Calculator.add(values.first, values.second) == values.answer)
    }
    
    @Test("Subtraction Tests", arguments: [
        TestValues(first: 2, second: 3, answer: -1),
        TestValues(first: 11, second: 10, answer: 1),
        TestValues(first: 5, second: 4.5, answer: 0.5)
    ])
    func testSubtraction(_ values: TestValues) async throws {
        #expect(Calculator.subtract(values.first, values.second) == values.answer)
    }
    
    @Test("Multiplication Tests", arguments: [
        TestValues(first: 2, second: 3, answer: 6),
        TestValues(first: 11, second: 10, answer: 11),
        TestValues(first: 5, second: 4.5, answer: 22.5)
    ])
    func testMultiply(_ values: TestValues) async throws {
        #expect(Calculator.multiply(values.first, values.second) == values.answer)
    }
    
    @Test("Division Tests", arguments: [
        TestValues(first: 6, second: 3, answer: 2),
        TestValues(first: 11, second: 1, answer: 11),
        TestValues(first: 20, second: 5, answer: 4)
    ])
    func testDivide(_ values: TestValues) async throws {
        #expect(Calculator.divide(values.first, values.second) == values.answer)
    }
    
    @Test func simpleAdditionTest() {
        withKnownIssue("Addition will fail") {
            #expect(Calculator.add(2, 2) == 5)
        }
    }
}

@Test func testPrivate() {
    let test = SomeType()
    #expect(test.someProperty == 42)
}


