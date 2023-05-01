
import Vapor

func routes(_ app: Application) throws {
    
    app.get("ask") { req async throws -> String in
        let prompt = try req.query.get(String.self, at: "prompt")
        let resp = try await req.chatGPT.ask(prompt)
        guard let choise = resp.choices.first else { throw Abort(.conflict) }
        print(choise.message.role)
        return choise.message.content
    }
}
