import Cocoa

let cityKeyPath = \BasketballTeam.city
let seasonTeamCityKeyPath = \Season.team.city


struct BasketballTeam {
    var city: String
    var nickName: String
}

struct Season {
    let team: BasketballTeam
    let wins: Double
    let losses: Double
    let year: Int
}

struct Person {
    let name: String
    let age: Int
}

func getProperty<T, E>(of object: T, using keyPath: KeyPath<T, E>) -> E {
    return object[keyPath: keyPath]
}


func testKeyPath() {
    let people = [
        Person(name: "Anna", age: 16),
        Person(name: "Bob", age: 40),
        Person(name: "Caroline", age: 27)
    ]

    let names = people.map(\.name)
    print(names)

    let adults = people.filter{ $0[keyPath: \.age] > 18 }
    let adults2 = people.filter{ $0.age > 18 }
    print(adults)
}


testKeyPath()
