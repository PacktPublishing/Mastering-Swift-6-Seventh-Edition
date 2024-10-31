//
//  DispatchWorkItem.swift
//  Chapter 13
//
//  Created by Jon Hoffman on 10/31/24.
//

import Foundation

let workItem = DispatchWorkItem {
    for i in 1...9 {

        if workItem.isCancelled {
            print("workItem was cancelled")
            break
        }
        print("Executing \(i)")
        Thread.sleep(forTimeInterval: 1)
    }
}

func testWorkItem() async {
    workItem.notify(queue: DispatchQueue.main) {
        print("workItem has completed")
    }
    
    
    DispatchQueue.global(qos: .background).async(execute: workItem)
    
    let delayInSeconds = 4.0
    DispatchQueue.global().asyncAfter(deadline: .now() + delayInSeconds) {
        print("Cancelling workItem")
        workItem.cancel()
    }
}

