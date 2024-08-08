//
//  DispatchGroup.swift
//  Chapter 13
//
//  Created by Jon Hoffman on 6/12/24.
//

import Foundation


func testDispatchGroup() async {
    

    let queue = DispatchQueue(label: "cqueue.hoffman.jon", attributes:.concurrent)
    
    let dispatchGroup = DispatchGroup()

    dispatchGroup.enter()
    queue.async {
        print("async1 started")
        performCalculation(1_000, tag: "async1")
        print("aync1 completed")
        dispatchGroup.leave()
    }

    dispatchGroup.enter()
    queue.async {
        print("async2 started")
        performCalculation(10_000, tag: "async2")
        print("async2 completed")
        dispatchGroup.leave()
    }

    dispatchGroup.notify(queue: DispatchQueue.main) {
        print("All tasks are complete")
    }

}


