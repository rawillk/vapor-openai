
import Vapor

public final class ChatGPT {
    
    public let app: Application
    public let api: API = .init()
    let client: Client
    
    private let headers: HTTPHeaders
    
    init(app: Application) {
        self.app = app
        self.client = app.client
        let apiKey = Environment.get("OPENAI_API_KEY")!
        self.headers = .init([("Authorization", "Bearer \(apiKey)")])
    }
    
    public func ask(_ prompt: String, with model: Model = .gpt3_5) async throws -> API.Response {
        let request = API.Request(model: model, messages: [.init(role: .user, content: prompt)])
        let response = try await client.post(api.chat, headers: headers, content: request)
        if let body = response.body {
            let string = String(buffer: body)
            print(string)
        }
        return try response.content.decode(API.Response.self)
    }
}

public extension Application {
    
    var chatGPT: ChatGPT {
        .init(app: self)
    }
}

public extension Request {
    
    var chatGPT: ChatGPT {
        .init(app: application)
    }
}
