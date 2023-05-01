
import Vapor

public extension API {
    
    struct Request: Content {
        
        public let model: Model
        public let messages: [Message]
    }
}
