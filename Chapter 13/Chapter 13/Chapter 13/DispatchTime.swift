//
//  DispatchTime.swift
//  Chapter 13
//
//  Created by Jon Hoffman on 10/31/24.
//

import Foundation

func testDispatchTime() async {
    let delayInSeconds = 4.0

    let delayTime = DispatchTime.now() + delayInSeconds

    DispatchQueue.main.asyncAfter(deadline: delayTime) {
        print("After \(delayInSeconds) second delay.")
    }

}

func testDispatchWallTime() async {
    let delayInSeconds = 4

    let delayTime = DispatchWallTime.now() + .seconds(delayInSeconds)

    DispatchQueue.main.asyncAfter(wallDeadline: delayTime) {
        print("After \(delayInSeconds) second delay.")
    }
}


