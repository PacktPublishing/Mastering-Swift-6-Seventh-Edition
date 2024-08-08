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
