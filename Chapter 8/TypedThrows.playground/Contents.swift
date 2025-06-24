import Cocoa

enum PlayerNumberError: Error {
    case numberTooHigh(description: String)
    case numberTooLow(description: String)
    case numberAlreadyAssigned
    case numberDoesNotExist
}


typealias BaseballPlayer = (firstName: String, lastName: String, number: Int)


struct BaseballTeam {
    private let maxNumber = 99
    private let minNumber = 0
    private var players = [Int: BaseballPlayer]()
    
    mutating func addPlayer(player: BaseballPlayer) throws(PlayerNumberError) {
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

func testBaseballPlayer() {
    var myTeam = BaseballTeam()

    do {
        try myTeam.addPlayer(player:("David", "Ortiz", 34))
        print("Player added")
    } catch PlayerNumberError.numberTooHigh(let description) {
        print("Error: \(description)")
    } catch PlayerNumberError.numberTooLow(let description) {
        print("Error: \(description)")
    } catch PlayerNumberError.numberAlreadyAssigned {
        print("Error: Number already assigned")
    } catch {
        print("Error: Unknown Error")
    }
}

testBaseballPlayer()
