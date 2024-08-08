//
//  Calculations.swift
//  Chapter 13
//
//  Created by Jon Hoffman on 6/9/24.
//

import Foundation


func doCalc() {
    let x = 100
    let y = x*x
    _ = y/x
}

func performCalculation(_ iterations: Int, tag: String) {
    let start = CFAbsoluteTimeGetCurrent()
    for _ in 0 ..< iterations {
        doCalc()
    }
    let end = CFAbsoluteTimeGetCurrent()
    print("time for \(tag):\(end-start)")
}
