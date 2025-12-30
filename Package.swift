// swift-tools-version: 6.0
// This is a Skip (https://skip.tools) package.
import PackageDescription

let package = Package(
    name: "skip-authentication-services",
    defaultLocalization: "en",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(name: "SkipAuthenticationServices", type: .dynamic, targets: ["SkipAuthenticationServices"]),
    ],
    dependencies: [
        .package(url: "https://source.skip.tools/skip.git", from: "1.6.30"),
        .package(url: "https://source.skip.tools/skip-foundation.git", from: "1.0.0")
    ],
    targets: [
        .target(name: "SkipAuthenticationServices", dependencies: [
            .product(name: "SkipFoundation", package: "skip-foundation")
        ], resources: [.process("Resources")], plugins: [.plugin(name: "skipstone", package: "skip")]),
        .testTarget(name: "SkipAuthenticationServicesTests", dependencies: [
            "SkipAuthenticationServices",
            .product(name: "SkipTest", package: "skip")
        ], resources: [.process("Resources")], plugins: [.plugin(name: "skipstone", package: "skip")]),
    ]
)
