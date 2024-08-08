import Cocoa

var greeting = "Hello, playground"


func analyzeTemperatures(analysis:([Int])->Void) {
    let tempArray = [72,74,76,68,70,72,66]
    analysis(tempArray)
}


let threshold = 71
var aboveThresholdCount = 0

let daysAboveTemperature = { (temperatures: [Int]) in
    for temperature in temperatures {
        if temperature > threshold {
            aboveThresholdCount += 1
        }
    }
    print("Number of days above \(threshold)°F: \(aboveThresholdCount)")
}

analyzeTemperatures(analysis: daysAboveTemperature)
