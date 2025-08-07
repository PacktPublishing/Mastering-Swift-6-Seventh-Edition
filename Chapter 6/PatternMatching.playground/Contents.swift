import Foundation

enum Weather {
    case sunny
    case cloudy
    case rainy(Int)
    case snowy(amount: Int)
}


func showWeather(_ weather: Weather) {
    switch weather {
    case .sunny:
        print("It's sunny")
    case .cloudy:
        print("It's cloudy")
    case .rainy(let intensity):
        print("It's raining with an intensity \(intensity).")
    case .snowy(let amount):
        print("It's snowing with an estimated amount of \(amount).")
    }
}

func showPrecipitation(_ weather: Weather) {
    switch weather {
    case .sunny, .cloudy:
        print("No precipitation today")
    case .rainy(let intensity):
        print("It rained with an intensity of \(intensity).")
    case .snowy(let amount):
        print("It snowed \(amount) inches.")
    }
}

func testPatternMatching() {
    showWeather(.sunny)
    showWeather(.rainy(2))
    showWeather(.snowy(amount: 8))
    
    showPrecipitation(.sunny)
    showPrecipitation(.rainy(2))
    showPrecipitation(.snowy(amount: 8))
}

func tooWet(_ weather: Weather) {
  if case let .rainy(intensity) = weather, intensity > 5 {
    print("Too wet to go outside")
  }
}

testPatternMatching()
tooWet(.rainy(7))
