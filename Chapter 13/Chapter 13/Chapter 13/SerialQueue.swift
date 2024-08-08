//
//  SerialQueue.swift
//  Chapter 13
//
//  Created by Jon Hoffman on 6/25/24.
//

import Foundation

func testSerialQueue() async {
    let squeue = DispatchQueue(label: "squeue.hoffman.jon")
    let s = {
        performCalculation(1000, tag: "async1")
    }
    squeue.async (execute: s)
}

func testSerialQueue2() async {
    let squeue = DispatchQueue(label: "squeue.hoffman.jon")
    squeue.async {
        performCalculation(10_000_000, tag: "async1")
    }
    squeue.async {
        performCalculation(1000, tag: "async2")
    }
    squeue.async {
        performCalculation(100_000, tag: "async3")
    }

}



