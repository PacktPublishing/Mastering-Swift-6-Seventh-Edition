import Foundation

var greeting = "Hello, playground"

enum PlayerNumberError: Error, LocalizedError {
    case numberTooHigh(description: String)
    case numberTooLow(description: String)
    case numberAlreadyAssigned
    case numberDoesNotExist
    
    var errorDescription: String? {
        switch self {
        case .numberTooHigh(description: let description):
            return description
        case .numberTooLow(description: let description):
            return description
        case .numberAlreadyAssigned:
            return "Player number already assigned"
        case .numberDoesNotExist:
            return "Player number does not exist"
        }
    }
}

typealias BaseballPlayer = (firstName: String, lastName: String, number: Int)


struct BaseballTeam {
    private let maxNumber = 99
    private let minNumber = 0
    private var players = [Int: BaseballPlayer]()
    
    mutating func addPlayer(player: BaseballPlayer) throws {
        guard player.number < maxNumber else {
            throw PlayerNumberError.numberTooHigh(description: "Max number is \(maxNumber)")
        }
        guard player.number > minNumber else {
            throw PlayerNumberError.numberTooLow(description: "Min number is \(minNumber)")
        }
        guard players[player.number] == nil else {
            throw PlayerNumberError.numberAlreadyAssigned
        }
        players[player.number] = player
    }
    
    func getPlayerByNumber(number: Int) throws -> BaseballPlayer {
        if let player = players[number] {
            return player
        } else {
            throw PlayerNumberError.numberDoesNotExist
        }
    }
    
}


func testBaseballPlayer2() {
    var myTeam = BaseballTeam()
    do {
        try myTeam.addPlayer(player:("David", "Ortiz", 100))
        print("Player added")
    } catch let error as PlayerNumberError {
        print("Error: " + error.localizedDescription)
    } catch {
        print("Unknown error")
    }
    
    do {
        let player = try myTeam.getPlayerByNumber(number: 34)
        print("Player is \(player.firstName) \(player.lastName)")
    } catch let error as PlayerNumberError {
        print("Error: " + error.localizedDescription)
    } catch {
        print("Unknown error")
    }
}

testBaseballPlayer2()



