import Cocoa

struct Hello {
    static subscript (name: String) -> String {
        return "Hello \(name)"
    }
}

let greeting = Hello["Jon"]

