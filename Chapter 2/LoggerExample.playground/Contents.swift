import Cocoa

var greeting = "Hello, playground"


enum LogLevel {
    case info, warning, error
}

class Logger {
    typealias logLevelHandler = (String) -> Void
    private var handlers: [LogLevel: [logLevelHandler]] = [:]
    
    func registerHandler(for level: LogLevel, handler: @escaping logLevelHandler) {
        if handlers[level] == nil {
            handlers[level] = []
        }
        handlers[level]?.append(handler)
    }
    
    func log(_ message: String, level: LogLevel) {
        if let levelHandlers = handlers[level] {
            for handler in levelHandlers {
                handler(message)
            }
        }
    }
}


let logger = Logger()

logger.registerHandler(for: .info) { message in
    print("INFO: \(message)")
}
logger.registerHandler(for: .warning) { message in
    print("WARNING: \(message)")
}
logger.registerHandler(for: .error) { message in
    print("ERROR: \(message)")
}


let emailError = {
    (message: String)  -> Void in
    
    //code to email error
    print("Emailed Error: \(message)")
}
logger.registerHandler(for: .error, handler: emailError)


logger.log("Infomational Message", level: .info)
logger.log("Warning message", level: .warning)
logger.log("We have an error", level: .error)
