// Intentionally empty.
//
// SPM binaryTargets cannot be a library product's sole content, so this shim
// target wraps `Argus.xcframework` and carries its system-framework link
// settings (see Package.swift). Consumers `import Argus` — the module vended by
// the binary — never this wrapper.
