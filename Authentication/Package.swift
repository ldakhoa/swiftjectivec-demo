// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Authentication",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "Authentication",
            targets: ["Authentication"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftjectiveCApp/Networking", from: "1.0.0"),
        .package(url: "https://github.com/SwiftjectiveCApp/DesignSystem", from: "1.0.0"),
        .package(url: "https://github.com/SwiftjectiveCApp/Models", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "Authentication",
            dependencies: [
                "DesignSystem",
                "Networking",
                "Models",
            ]),
        .testTarget(
            name: "AuthenticationTests",
            dependencies: ["Authentication"]),
    ]
)
