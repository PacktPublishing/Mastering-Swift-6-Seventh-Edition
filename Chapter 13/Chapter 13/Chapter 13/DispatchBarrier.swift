//
//  DispatchBarrier.swift
//  Chapter 13
//
//  Created by Jon Hoffman on 6/12/24.
//

import Foundation

func testDispatchBarrier() async {

    let queue = DispatchQueue(label: "cqueue.hoffman.jon", attributes:.concurrent)

    queue.async {
        print("async1 started")
        performCalculation(30_000, tag: "async1")
        print("aync1 completed")
    }

    queue.async {
        print("async2 started")
        performCalculation(10_000, tag: "async2")
        print("async2 completed")
    }
    
    queue.async(flags: .barrier) {
        print("async3 started")
        performCalculation(100_000, tag: "async3")
        print("async3 completed")
    }
    
    queue.async {
        print("async4 started")
        performCalculation(100, tag: "async4")
        print("async4 completed")
    }
}



