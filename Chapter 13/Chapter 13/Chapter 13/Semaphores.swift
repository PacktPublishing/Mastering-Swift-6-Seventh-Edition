//
//  Semaphores.swift
//  Chapter 13
//
//  Created by Jon Hoffman on 6/25/24.
//

import Foundation

var cnt = 0

let semaphore = DispatchSemaphore(value: 1)
let queue = DispatchQueue(label: "cqueue.hoffman.jon", attributes:.concurrent)

func accessSharedResource(taskNumber: Int) {
    semaphore.wait()
    

    print("Task \(taskNumber) is accessing the resource (\(cnt))")
    sleep(2) // Simulate a delay
    
    cnt += taskNumber
    print("Task \(taskNumber) is releasing the resource (\(cnt))")
    semaphore.signal()
}

func testSemaphores() {
    for i in 1...5 {
        queue.async {
            print("submitting \(i)")
            accessSharedResource(taskNumber: i)
        }
    }
}


