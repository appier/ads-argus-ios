# Argus iOS SDK

Binary distribution of **Argus**, Appier's device-signal SDK. The public module
is `Argus` (`import Argus`), shipped as a signed `Argus.xcframework`.

This repo is generated from the private source repo
`appier-ads-data-signal-ios`; only the built framework, podspec, and SPM
manifest live here. Do not edit sources here — releases are opened as PRs by the
source repo's CI.

## Installation

Argus supports three integration paths.

### Swift Package Manager

In Xcode: **File ▸ Add Package Dependencies…** and enter

```
https://github.com/appier/ads-argus-ios.git
```

or add it to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/appier/ads-argus-ios.git", from: "1.0.0")
],
targets: [
    .target(
        name: "YourApp",
        dependencies: [
            .product(name: "Argus", package: "ads-argus-ios")
        ]
    )
]
```

### CocoaPods

Add to your `Podfile`:

```ruby
pod 'AppierArgus'
```

then `pod install`. (The module is `Argus` regardless of the pod name.)

### Direct download (manual)

Download `ArgusFramework.zip` from the
[latest release](https://github.com/appier/ads-argus-ios/releases), unzip it,
and drag `Argus.xcframework` into your target's **Frameworks, Libraries, and
Embedded Content** with **Embed & Sign**.

## Usage

```swift
import Argus

let argus = ArgusSDK()
let ext: Data = argus.getData()
```

See the SDK documentation for the full public API.

## License

Argus is available under the MIT license. See the [LICENSE](LICENSE) file.

## Author

Appier Inc., appier-ssp-dev@appier.com — https://www.appier.com
