// swift-tools-version:5.7.1
import PackageDescription

// SPM distribution of the Argus device-signal SDK.
//
// The precompiled binary ships as `Argus.xcframework` (a binaryTarget). The
// public module is `Argus` (`import Argus`) and comes from that binary. The
// `ArgusWrapper` target is an (empty) shim that depends on the binary and
// declares the system frameworks Argus needs, so integrators get the correct
// link line automatically. Consume it as the `Argus` library product.
let package = Package(
    name: "Argus",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "Argus",
            targets: ["ArgusWrapper"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "Argus",
            path: "Argus.xcframework"
        ),
        .target(
            name: "ArgusWrapper",
            dependencies: [
                .target(name: "Argus")
            ],
            path: "Sources/ArgusWrapper",
            linkerSettings: [
                .linkedFramework("Foundation"),
                .linkedFramework("UIKit"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("Network"),
                .linkedFramework("AdSupport"),
                .linkedFramework("AppTrackingTransparency"),
                .linkedFramework("StoreKit")
            ]
        )
    ]
)
