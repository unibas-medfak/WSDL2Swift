// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "WSDL2Swift",
    platforms: [.macOS(.v26)],
    dependencies: [
        .package(url: "https://github.com/stencilproject/Stencil", branch: "master"),
        .package(url: "https://github.com/kylef/Commander", branch: "master"),
        .package(url: "https://github.com/tadija/AEXML", branch: "master"),
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
