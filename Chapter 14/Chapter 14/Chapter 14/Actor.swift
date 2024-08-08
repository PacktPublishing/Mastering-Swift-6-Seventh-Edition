//
//  Actor.swift
//  Chapter 14
//
//  Created by Jon Hoffman on 7/3/24.
//

import Foundation

actor BankAccount {
    private var balance: Double

    init(_ balance: Double) {
        self.balance = balance
    }

    func deposit(amount: Double) {
        balance += amount
    }

    func withdraw(amount: Double) -> Bool {
        if balance >= amount {
            balance -= amount
            
            return true
        } else {
            return false
        }
    }

    func getBalance() -> Double {
        return balance
    }
}


func testActor() async {
    let account = BankAccount(5000)

    await account.withdraw(amount: 100)
    print("New Balance \(await account.getBalance())")
    
}


