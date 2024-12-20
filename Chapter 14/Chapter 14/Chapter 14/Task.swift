//
//  Task.swift
//  Chapter 14
//
//  Created by Jon Hoffman on 7/1/24.
//

import Foundation

func createTask() {
    Task {
        //asynchronous code here
    }
}

func retrieveDataWithTask() {
    Task {
        let data = await retrieveUserData()
        print("Data: \(data)")
    }
}

func detachTask() {
    Task.detached {
        let data = await retrieveUserData()
        print("Data: \(data)")
    }
}

func testCancelTask() async throws {
    for i in 0..<10 {
        if Task.isCancelled {
            print("Task was cancelled, cleaning up")
            throw CancellationError()
        }
        
        print("Loop \(i)")
        let _ = await retrieveUserData()
    }
}


func cancelTask() async {
    let task = Task {
        do {
            try await testCancelTask()
        } catch is CancellationError {
            print("Caught a cancellation error")
        } catch {
            print("Caught an unexpected error: \(error)")
        }
    }
    try? await Task.sleep(nanoseconds: 6_000_000_000)
    task.cancel()
    
}


