
import Vapor

public struct API {
    
    public let baseURL = "https://api.openai.com/v1/"
    
    var chat: URI {
        .init(stringLiteral: baseURL + "chat/completions")
    }
}
