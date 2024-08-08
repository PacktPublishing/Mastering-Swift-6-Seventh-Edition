//
//  StructuredConcurrency.swift
//  Chapter 14
//
//  Created by Jon Hoffman on 7/1/24.
//

import Foundation


func retrieveUserData() async -> String {
    print("Retrieving user data")
    try? await Task.sleep(nanoseconds: 2_000_000_000)
    return "User Data Retrieved"
}

func retrieveImageData() async -> String {
    print("Retrieving image data")
    try? await Task.sleep(nanoseconds: 4_000_000_000)
    return "Image Data Retrieved"
}

func loadAllContent() async {
    async let userData = retrieveUserData()
    async let imageData = retrieveImageData()
    
    let results = await(userData, imageData)
    print("User Data:  \(results.0) Image Data: \(results.1)")
}



