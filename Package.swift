// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "QcSdkLoginX", defaultLocalization: "en", platforms: [.iOS(.v17)],

    products: [
        .library(name: "QcSdkLoginX", targets: ["QcSdkLoginX", "QcSdkLoginXSupport"]),
        .library(name: "QcSdkLoginXDependencies", type: .dynamic, targets: ["QcSdkLoginXDependencies"])
    ],

    dependencies: [
        .package(url: "https://github.com/YuFengChen77/QcSdkCore.git", exact: "2.0.0-beta.1")
    ],

    targets: [
        .binaryTarget(name: "QcSdkLoginX", url: "https://github.com/YuFengChen77/QcSdkLoginX/releases/download/2.0.0-beta.1/QcSdkLoginX-2.0.0-beta.1.xcframework.zip", checksum: "77500d1b4c655406973a2b34ffbf49fd0b1ac67dbf59996b75c2d3bf2dd09499"),

        .target(name: "QcSdkLoginXSupport", dependencies: ["QcSdkLoginX", .product(name: "QcSdkCore", package: "qcsdkcore")], path: "QcSdkLoginX", exclude: ["DependencySources"], sources: ["Sources"]),
        .target(name: "QcSdkLoginXDependencies", dependencies: [], path: "QcSdkLoginX", exclude: ["Sources"], sources: ["DependencySources"])
    ]
)
