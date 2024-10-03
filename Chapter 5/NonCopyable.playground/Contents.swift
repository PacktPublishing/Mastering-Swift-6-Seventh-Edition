import Cocoa

struct Person: ~Copyable {
    var firstName: String
    var lastName: String
    var emailAddress: String
}

func sendEmail(_ user: borrowing Person) {
    print("Sending Email to \(user.firstName) \(user.lastName)")
}

func consumeUser(_ user: consuming Person) {
    print("Consuming User")
}

func userFunction() {
    let user = Person(firstName: "Jon", lastName: "Hoffman", emailAddress: "Jon@mydomain.com")
    
    sendEmail(user)
    consumeUser(user)
//    sendEmail(user)
}


struct SecretMessage: ~Copyable, Message {
    private var message: String
    init(_ message: String) {
        self.message = message
    }
    
    consuming func read() {
        print("\(message) disappearing")
    }
}

func secretMessageFunction() {
    var SecretMessage = SecretMessage("My Message")
        
    SecretMessage.read()
 //   SecretMessage.read()
}

userFunction()
secretMessageFunction()

protocol Message: ~Copyable {
    consuming func read()
}
