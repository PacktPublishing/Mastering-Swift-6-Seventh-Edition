//
//  AsyncAfter.swift
//  Chapter 13
//
//  Created by Jon Hoffman on 6/25/24.
//

import Foundation

func testAsyncAfter() async {
    let queue2 = DispatchQueue(label: "squeue.hoffman.jon")
    let delayInSeconds = 2.0
    let pTime = DispatchTime.now() + Double(delayInSeconds * Double(NSEC_PER_SEC)) / Double(NSEC_PER_SEC)
    queue2.asyncAfter(deadline: pTime) {
        print("Time's Up")
    }

}



