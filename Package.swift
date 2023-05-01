// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "vapor-openai",
    platforms: [.macOS(.v12)],
    products: [
        .library(name: "OpenAI", targets: ["OpenAI"]),
        .executable(name: "OpenAIServer", targets: ["OpenAIServer"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.75.0")
    ],
    targets: [
        .target(name: "OpenAI", dependencies: [
            .product(name: "Vapor", package: "vapor")
        ]),
        .executableTarget(name: "OpenAIServer", dependencies: [
            .target(name: "OpenAI"),
            .product(name: "Vapor", package: "vapor")
        ])
    ]
)
