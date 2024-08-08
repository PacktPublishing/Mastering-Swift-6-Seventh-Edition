import Cocoa

struct DictionaryComponent {
    let dictionary: [String: Any]
    
    func addToJSON(_ json: inout [String: Any]) {
        for (key, value) in dictionary {
            json[key] = value
        }
    }
}

@resultBuilder
struct JSONBuilder {
    static func buildBlock(_ components: DictionaryComponent...) -> [String: Any] {
        var result: [String: Any] = [:]
        for component in components {
            component.addToJSON(&result)
        }
        return result
    }
    
    static func buildExpression(_ expression: [String: Any]) -> DictionaryComponent {
        return DictionaryComponent(dictionary: expression)
    }
}


@JSONBuilder
func buildJSON() -> [String: Any] {
    [
        "name": "Jon",
        "age": 30,
        "address": [
            "city": "Boston",
            "zipcode": "10001"
        ]
    ]
}


let json = buildJSON()
print(json)

