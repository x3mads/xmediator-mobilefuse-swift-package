// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorMobileFuse",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "XMediatorMobileFuse", targets: ["XMediatorMobileFuseTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mobilefuse/mobilefuse-ios-sdk-spm.git", exact: "1.13.1"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.145.0")),
    ],
    targets: [
        .target(
            name: "XMediatorMobileFuseTarget",
            dependencies: [
                .target(name: "XMediatorMobileFuse"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "MobileFuseSDK", package: "mobilefuse-ios-sdk-spm"),
            ],
            path: "XMediatorMobileFuseTarget",
            linkerSettings: []
        ),
        .binaryTarget(
            name: "XMediatorMobileFuse",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorMobileFuse/XMediatorMobileFuse-1.13.1.0.zip",
            checksum: "eda7708697becf54a3b2cd80528edf705e5dfb478c391d066945ff1e2ab4b763"
        ),
    ]
)
