import Cocoa

@dynamicMemberLookup
struct BaseballTeam {
    let city: String
    let nickName: String
    let wins: Double
    let losses: Double
    let year: Int
    
    subscript(dynamicMember key: String) -> String {
        switch key {
        case "fullname":
            return "\(city) \(nickName)"
        case "percent":
            let per = wins/(wins+losses)
            return String(per)
        default:
            return "Unknown request"
        }
    }

}
