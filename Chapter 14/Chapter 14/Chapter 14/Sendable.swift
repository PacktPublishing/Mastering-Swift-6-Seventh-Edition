//
//  Sendable.swift
//  Chapter 14
//
//  Created by Jon Hoffman on 7/3/24.
//

import Foundation

struct Transaction {
    let id: Int
    let amount: Double
    let description: String
}

actor BankAccount1 {
    private var transactions = [Transaction]()

    func addTransaction(_ transaction: Transaction) {
        transactions.append(transaction)
    }
}
