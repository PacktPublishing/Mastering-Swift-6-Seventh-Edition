//
//  AdoptLegacyAPI.swift
//  Chapter 14
//
//  Created by Jon Hoffman on 4/21/25.
//

import Foundation

func fetchUserData(completion: @Sendable @escaping (Result<String, Error>) -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
        completion(.success("User Data fetched!"))
    }
}

func fetchUserDataAsync() async throws -> String {
    try await withCheckedThrowingContinuation { continuation in
        fetchUserData { result in
            switch result {
            case .success(let user):
                continuation.resume(returning: user)
            case .failure(let error):
                continuation.resume(throwing: error)
            }
        }
    }
}

func testContinuation() async {
    do {
        let user = try await fetchUserDataAsync()
        print("User loaded: \(user)")
    } catch {
        print("Failed to load user: \(error)")
    }

}
