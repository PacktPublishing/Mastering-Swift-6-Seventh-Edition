import Foundation

struct TicTacToe {
    var board = [["","",""],["","",""],["","",""]]
    subscript(x: Int, y: Int) -> String {
        get {
            return board[x][y]
        }
        set {
            board[x][y] = newValue
        }
    }
}

struct SayHello {
    subscript(messageText message: String, messageName name: String, number: Int) -> [String]{
        var retArray: [String] = []
        for _ in 0..<number {
            retArray.append("\(message) \(name)")
        }
        return retArray
    }
}

var board = TicTacToe()
board[1,1] = "x"
board[0,0] = "o"


var message = SayHello()
var myMessage = message[messageText: "Bonjour", messageName: "Jon", 5]
