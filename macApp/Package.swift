// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "macApp",
    platforms: [
        .macOS(.v14)
    ],
    dependencies: [
        .package(url: "https://github.com/Tencent-TDS/KuiklyUI.git", from: "2.28.0"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.20.0"),
    ],
    targets: [
        .executableTarget(
            name: "macApp",
            dependencies: [
                .product(name: "OpenKuiklyIOSRender", package: "KuiklyUI"),
                .product(name: "SDWebImage", package: "SDWebImage"),
            ],
            path: "macApp",
            resources: [],
            linkerSettings: [
                .linkedFramework("AppKit"),
                .linkedFramework("Cocoa"),
                .linkedFramework("Foundation"),
            ]
        ),
    ]
)
