import Cocoa

var greeting = "Hello, playground"

enum PlayerNumberError: Error, LocalizedError {
    case NumberTooHigh(description: String)
    case NumberTooLow(description: String)
    case NumberAlreadyAssigned
    case NumberDoesNotExist
    
    var errorDescription: String? {
        switch self {
        case .NumberTooHigh(description: let description):
            return description
        case .NumberTooLow(description: let description):
            return description
        case .NumberAlreadyAssigned:
            return "Player number already assigned"
        case .NumberDoesNotExist:
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
            throw PlayerNumberError.NumberTooHigh(description: "Max number is \(maxNumber)")
        }
        guard player.number > minNumber else {
            throw PlayerNumberError.NumberTooLow(description: "Min number is \(minNumber)")
        }
        guard players[player.number] == nil else {
            throw PlayerNumberError.NumberAlreadyAssigned
        }
        players[player.number] = player
    }
    
    func getPlayerByNumber(number: Int) throws -> BaseballPlayer {
        if let player = players[number] {
            return player
        } else {
            throw PlayerNumberError.NumberDoesNotExist
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



