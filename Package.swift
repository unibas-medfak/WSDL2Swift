// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "WSDL2Swift",
    platforms: [.macOS(.v26)],
    dependencies: [
        .package(url: "https://github.com/stencilproject/Stencil", from: "0.15.1"),
        .package(url: "https://github.com/kylef/Commander", branch: "master"),
        .package(url: "https://github.com/tadija/AEXML", from: "4.0.0"),
    ],
    targets: [
        .executableTarget(
            name: "WSDL2Swift",
            dependencies: [
                .product(name: "Stencil", package: "Stencil"),
                .product(name: "Commander", package: "Commander"),
                .product(name: "AEXML", package: "AEXML"),
            ],
        )
    ]
)
