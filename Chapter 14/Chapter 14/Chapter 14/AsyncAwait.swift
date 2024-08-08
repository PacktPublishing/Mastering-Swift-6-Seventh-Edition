//
//  AsyncAwait.swift
//  Chapter 14
//
//  Created by Jon Hoffman on 7/1/24.
//

import Foundation


func retrieveData() async -> String {
    print("Retrieving data")
    try! await Task.sleep(nanoseconds: 2_000_000_000)
    return "Data Retrieved"
}

func loadContent() async {
    let data = await retrieveData()
    print("Data:  \(data)")
}
