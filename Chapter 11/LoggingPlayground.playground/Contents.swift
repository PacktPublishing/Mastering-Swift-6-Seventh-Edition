import Cocoa

var greeting = "Hello, playground"


func logger(_ message: String) {
    print("Logger:  \(message)")
}

struct User {
    var userName: String {
        willSet {
            logger("User name changing from \(userName) to \(newValue)")
        }
    }
    var password:  String
}


var user = User(userName: "MyUser", password: "MyPass1234")
user.userName = "Jon"
