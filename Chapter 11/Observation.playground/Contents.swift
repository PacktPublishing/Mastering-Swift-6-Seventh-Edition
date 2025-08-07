import Foundation

var greeting = "Hello, playground"


@Observable
class Unit {
    var hitPoints = 100
}


let myUnit = Unit()
let hitPointsRemaining = Observations { myUnit.hitPoints }

for i in 1...5 {
    Task {
        try? await Task.sleep(for: .seconds(2))
        myUnit.hitPoints -= 10
    }
}

for await hitPoints in hitPointsRemaining {
    print("new hit points: \(hitPoints)")
}
