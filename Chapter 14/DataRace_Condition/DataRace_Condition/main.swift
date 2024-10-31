//
//  main.swift
//  DataRace_Condition
//
//  Created by Jon Hoffman on 6/23/24.
//

import Foundation

var count = 0
let queue = DispatchQueue.global()

func incrementCount() {
    for _ in 0..<1000 {
      queue.async {
        count += 1
          print(count)
      }
    }
}

incrementCount()

print("Final:  \(count)")

RunLoop.main.run()


