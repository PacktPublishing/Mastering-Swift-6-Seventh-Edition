import Foundation

import RegexBuilder

func test(_ str: String) {
    let pattern = Regex {
        Anchor.wordBoundary
        OneOrMore(.word)
        Anchor.wordBoundary
    }
    
    let matches = str.matches(of: pattern)
    for match in matches {
        print("++ \(str[match.range])")
    }
}

func testRegexBuilder(_ str: String) {
    let namePattern = Regex {
        Capture {
            OneOrMore(.word)
            ZeroOrMore(.whitespace)
        }
    }

    let matches = str.matches(of: namePattern)
    for match in matches {
        print("-- \(str[match.range])")
    }

}

//Used Refactor->Convert to RegexBuilder
func validateEmailAddressRegexBuilder(_ address: String) -> Bool {
    let pattern = Regex( Regex {
        Anchor.wordBoundary
        OneOrMore {
            CharacterClass(
                .anyOf("._%+-"),
                ("A"..."Z"),
                ("0"..."9")
            )
        }
        "@"
        OneOrMore {
            CharacterClass(
                .anyOf(".-"),
                ("A"..."Z"),
                ("0"..."9")
            )
        }
        "."
        Repeat(2...) {
            ("A"..."Z")
        }
        Anchor.wordBoundary
    }).ignoresCase()
    
    let match = address.wholeMatch(of: pattern)

    return match != nil
}


func testTransformAndReference() {
    let animalTypeRef = Reference(Substring.self)
    let ageRef = Reference(Int.self)
    let nameRef = Reference(Substring.self)
    
    let str = "I am a dog who is 1 years old and my name is Luna"
    let pattern = Regex {
        "I am a "

        Capture(as: animalTypeRef) {
            OneOrMore(.word)
        }

        " who is "

        TryCapture(as: ageRef) {
            OneOrMore(.digit)
        } transform: { match in
            Int(match)
        }

        " years old and my name is "
        
        Capture(as: nameRef) {
            OneOrMore(.word)
        }
    }
    
    let matches = str.matches(of: pattern)
    for match in matches {
        print("- Animal Type:  \(match[animalTypeRef])")
        print("- Name: \(match[nameRef])")
        print("- Age: \(match[ageRef])")
    }
}

testRegexBuilder("Hello from RegexBuilder and Swift")
testTransformAndReference()
test("Hello from RegexBuilder and Swift")
validateEmailAddressRegexBuilder("hoffman.jon@mydomain.com")
