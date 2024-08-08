//
//  ConcurrentQueue.swift
//  Chapter 13
//
//  Created by Jon Hoffman on 6/9/24.
//

import Foundation

func testConcurrentQueue() async {
    let cqueue = DispatchQueue(label: "cqueue.hoffman.jon", attributes:.concurrent)
    let c = { performCalculation(1000, tag: "async1")}
    cqueue.async(execute: c)
}

func testConcurrentQueue2() async {
    let cqueue = DispatchQueue(label: "cqueue.hoffman.jon", attributes:.concurrent)
    
    cqueue.async {
        performCalculation(10_000_000, tag: "async1")
    }
    cqueue.async {
        performCalculation(1000, tag: "async2")
    }
    cqueue.async {
        performCalculation(100_000, tag: "async3")
    }

}



