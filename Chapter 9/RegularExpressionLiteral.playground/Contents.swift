import Foundation


func validateEmailAddressLiteral() -> Bool {
    let pattern = /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b/.ignoresCase()
    let address = "hoffman.jon@mydomain.com"
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
validateEmailAddressLiteral()
