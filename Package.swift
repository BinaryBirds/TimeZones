// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "TimeZones",
    products: [
        .library(name: "TimeZones", targets: ["TimeZones"]),
    ],
    targets: [
        .target(
            name: "TimeZones",
            dependencies: [],
            path: "./Sources"),
        .testTarget(
            name: "TimeZonesTests",
            dependencies: ["TimeZones"]),
    ]
)
