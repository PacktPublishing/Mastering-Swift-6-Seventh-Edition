//
//  TaskGroup.swift
//  Chapter 14
//
//  Created by Jon Hoffman on 7/3/24.
//

import Foundation


func retrieveUserData(_ forUser: String) async -> String {
    print("Retrieving user data for \(forUser)")
    try? await Task.sleep(for: .seconds(Double.random(in: 1...6)))
    return "User Data Retrieved for \(forUser)"
}

func taskGroup() async -> [String] {
    return await withTaskGroup { group in
        group.addTask {
            await retrieveUserData("Jon")
        }
        
        group.addTask {
            await retrieveUserData("Heidi")
        }
        
        group.addTask {
            await retrieveUserData("Kailey")
        }
        
        group.addTask {
            await retrieveUserData("Kai")
        }
        
        var data = [String]()
        for await string in group {
            data.append(string)
        }
        return data
    }
}

func testTaskGroup() async {
    let results = await taskGroup()
    for result in results {
        print("Result: \(result)")
    }
}



