fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## iOS

### ios pr_argus_sdk

Open the Argus SDK release PR (commits the new `Argus.xcframework` + version).
Invoked by the source repo's release CI after it builds the signed framework.

### ios release_argus_sdk

Create the Argus SDK GitHub release — tags `argus-sdk-v<version>` and attaches a
zipped `Argus.xcframework` (`ArgusFramework.zip`) for direct download.

### ios pods_argus_sdk

Push the podspec to CocoaPods trunk.

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.
