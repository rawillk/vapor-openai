
import Vapor

public struct Message: Content {
    
    public let role: Role
    public let content: String
}
