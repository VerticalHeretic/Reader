// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Reader",
    products: [
        .library(
            name: "Reader",
            targets: ["Reader"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Reader",
            dependencies: []),
        .testTarget(
            name: "ReaderTests",
            dependencies: ["Reader"]),
    ]
)
