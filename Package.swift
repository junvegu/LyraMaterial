// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "LyraMaterial",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "LyraMaterial",
            targets: ["LyraMaterial"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/junvegu/Motion.git", from: "4.1.0")
    ],
    targets: [
        .binaryTarget(
            name: "LyraMaterial",
            path: "./LyraMaterial.xcframework"
        )
    ]
)

