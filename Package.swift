// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "LaunchDarkly",
    platforms: [
        .iOS(.v14),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "LaunchDarkly",
            targets: ["LaunchDarkly"]),
    ],
    dependencies: [
        .package(name: "DarklyEventSource", path: "../DarklyEventSource"),
    ],
    targets: [
        .target(
            name: "LaunchDarkly",
            dependencies: [
                .product( name: "DarklyEventSource", package: "DarklyEventSource"),
            ],
            path: "./",
            exclude: [
                "Cartfile",
                "Cartfile.resolved",
                "Carthage",
                "Pods",
                "Gemfile",
                "Gemfile.lock",
                "SourceryTemplates",
                "Framework",
                "LaunchDarkly.podspec",
                "LaunchDarkly.xcodeproj",
                "LaunchDarkly.xcworkspace",
                "LaunchDarkly/GeneratedCode",
                "LaunchDarkly/LaunchDarklyTests",
                "LaunchDarkly/LaunchDarkly/Support"
            ]
        )
    ]
)
