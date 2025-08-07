import Foundation

protocol Dog {
    var name: String { get set }
    var color: String { get set }
}

extension Dog {
    func speak() -> String {
      return "Woof Woof"
    }
}

struct JackRussel: Dog {
    var name: String
    var color: String
}

class WhiteLab: Dog {
    var name: String
    var color: String
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
}
struct Mutt: Dog {
    var name: String
    var color: String
    
    func speak() -> String {
        return "I am hungry"
    }

}

func dogExtensionTest() {
    let dash = JackRussel(name: "Dash", color: "Brown and White")
    let lily = WhiteLab(name: "Lily", color: "White")
    let maple = Mutt(name: "Buddy", color: "Brown")

    print("\(dash.speak())")
    print("\(lily.speak())")
    print("\(maple.speak())")
}

func existentialAny() {
    let mixed: [any Dog] = [
        JackRussel(name: "Dash", color: "Brown and White"),
        Mutt(name: "Buddy", color: "Brown")
    ]
    
    for dog in mixed {
        if let jackRussel = dog as? JackRussel {
            print("\(jackRussel.name) is a Jack Russel")
        } else if let mutt = dog as? Mutt {
            print("\(mutt.name) is a Mutt")
        }
    }
    
    for dog in mixed {
        switch dog {
        case let jackRussel as JackRussel:
            print("\(jackRussel.name) is a Jack Russel")
        case let mutt as Mutt:
            print("\(mutt.name) is a Mutt")
        default:
            print("\(dog.name) is of an unknown type")
        }
    }
}

print("---Dog Extension---")
dogExtensionTest()

print("---Existential Any---")
existentialAny()


