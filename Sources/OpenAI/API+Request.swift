
import Vapor

public extension API {
    
    struct Request: Content {
        
        public let model: Model
        public let messages: [Message]
        
        public init(model: Model = .gpt3_5, messages: [Message]) {
            self.model = model
            self.messages = messages
        }
    }
}
