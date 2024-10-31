//
//  UncheckedSendable.swift
//  Chapter 14
//
//  Created by Jon Hoffman on 10/30/24.
//

import Foundation

class Counter: @unchecked Sendable {
    private var count = 0
    private let lock = NSLock()

    func increment() {
        lock.lock()
        defer { lock.unlock() }
        count += 1
    }

    func getCount() -> Int {
        lock.lock()
        defer { lock.unlock() }
        return count
    }
}
