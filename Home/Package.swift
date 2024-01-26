// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Home",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Home",
            targets: ["Home"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftjectiveCApp/Networking", from: "1.0.0"),
        .package(url: "https://github.com/SwiftjectiveCApp/DesignSystem", from: "1.0.0"),
        .package(url: "https://github.com/SwiftjectiveCApp/Models", from: "1.0.0"),
        .package(url: "https://github.com/SwiftjectiveCApp/Profile", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "Home",
            dependencies: [
                "Networking",
                "DesignSystem",
                "Models",
                "Profile"
            ]),
        .testTarget(
            name: "HomeTests",
            dependencies: ["Home"]),
    ]
)
