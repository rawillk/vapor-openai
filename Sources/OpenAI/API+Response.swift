
import Vapor

public extension API {
    
    struct Response: Content {
        
        public let choices: [Choice]
    }
}
