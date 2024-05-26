import Cocoa


func validateEmailAddressLiteral(_ address: String) -> Bool {
    let pattern = /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b/.ignoresCase()
    let match = address.wholeMatch(of: pattern)

    return match != nil
}

func testRegularExpressionLiteral(_ text: String) {
    let pattern = /\b\w+\b/
    let matches = text.matches(of: pattern)

    for match in matches {
        print("-- \(text[match.range])")
    }

}

testRegularExpressionLiteral("Hello from regex literal")
