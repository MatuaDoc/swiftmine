// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "swiftmine",
    products: [
        .executable(
            name: "swiftmine",
            targets: [
                "swiftmine"
            ]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/matuadoc/qlift",
            branch: "main"
        )
    ],
    targets: [
        .executableTarget(
            name: "swiftmine",
            dependencies: [
                .product(name: "Qlift", package: "qlift")
            ],
            path: "Sources"
        )
    ]
)
