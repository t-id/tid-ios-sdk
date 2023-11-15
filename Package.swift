// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TidSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "TidSDK", targets: ["TidSDK"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "TidLibFramework",
            path: "./Frameworks/TidLib.xcframework"
        ),
        .target(
            name: "TidSDK",
            dependencies: [
                "TidLibFramework",
            ]
        ),
    ]
)

