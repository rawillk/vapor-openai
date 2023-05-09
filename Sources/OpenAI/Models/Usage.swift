
import Foundation

public struct Usage: Codable {
    
    let promptTokens: Int
    let completionTokens: Int
    let totalTokens: Int
}
