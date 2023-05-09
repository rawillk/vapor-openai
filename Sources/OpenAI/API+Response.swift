
import Vapor

public extension API {
    
    struct Response: Content {
        
        public let created: Date
        public let choices: [Choice]
        public let usage: Usage
    }
}
