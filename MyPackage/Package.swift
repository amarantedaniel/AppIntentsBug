// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyPackage",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "MyPackage", targets: ["MyPackage"])
    ],
    targets: [
        .target(name: "MyPackage", resources: [.process("Resources")])
    ]
)
