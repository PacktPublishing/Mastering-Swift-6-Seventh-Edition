import Cocoa

enum MyError: Error {
    case minor
    case bad
    case terrible(description:String)
}

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
    
    
    do {
        let player = try myTeam.getPlayerByNumber(number: 34)
        print("Player is \(player.firstName) \(player.lastName)")
    } catch PlayerNumberError.numberDoesNotExist {
        print("No player has that number")
    } catch {
        print("Error: Unknown Error")
    }

}


func deferFunction() throws {
    print("Function started")
    var myTeam = BaseballTeam()
    var str: String?
    defer {
        print("In defer block")
        if let s = str {
            print("str is \(s)")
        }
    }
    str = "Test String"
    try myTeam.addPlayer(player:("David", "Ortiz", 340))
    print("Function finished")
}


testBaseballPlayer()

do {
  try deferFunction()
} catch {
  print("error found")
}
