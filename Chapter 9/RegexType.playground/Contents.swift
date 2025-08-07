import Foundation

func validateEmailAddress(_ address: String) -> Bool {
    let pattern = Regex( /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b/).ignoresCase()
    let match = address.wholeMatch(of: pattern)

    return match != nil
}

func testRegexType(_ text: String) {
    let pattern = Regex(/\b\w+\b/)
    let matches = text.matches(of: pattern)
    for match in matches {
        print("-- \(text[match.range])")
    }
}

testRegexType("Hello from Regex")
