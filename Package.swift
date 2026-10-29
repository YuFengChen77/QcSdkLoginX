// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "QcSdkLoginX", defaultLocalization: "en", platforms: [.iOS(.v17)],

    products: [
        .library(name: "QcSdkLoginX", targets: ["QcSdkLoginX", "QcSdkLoginXSupport"])
    ],

    dependencies: [
        .package(url: "https://github.com/YuFengChen77/QcSdkCore.git", exact: "1.1.5")
    ],

    targets: [
        .binaryTarget(name: "QcSdkLoginX", url: "https://github.com/YuFengChen77/QcSdkLoginX/releases/download/1.1.2/QcSdkLoginX-1.1.2.xcframework.zip", checksum: "e399662e407746670a39b1e1dfd6786a83d2ed3fe7a0f18caab5aa996a4aab45"),

        .target(name: "QcSdkLoginXSupport", dependencies: ["QcSdkLoginX", .product(name: "QcSdkCore", package: "qcsdkcore")], path: "QcSdkLoginX", sources: ["Sources"])
    ]
)
