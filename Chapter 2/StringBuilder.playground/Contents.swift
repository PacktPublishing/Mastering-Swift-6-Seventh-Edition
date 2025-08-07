import Foundation

@resultBuilder
struct StringBuilder {
    static func buildBlock(_ components: String...) -> String {
        return components.joined()
    }
}

func buildString(@StringBuilder _ components: () -> String) -> String {
    return components()
}


let result = buildString {
    "Hello, "
    "Mastering "
    "Swift!"
}

print("\(result)")

