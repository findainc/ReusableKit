// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "ReusableKit",
  platforms: [
    .iOS(.v8), .tvOS(.v9)
  ],
  products: [
    .library(name: "ReusableKit", targets: ["ReusableKit"])
  ],
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0")),
  ],
  targets: [
    .target(name: "ReusableKit"),
    .testTarget(name: "ReusableKitTests", dependencies: ["ReusableKit"])
  ],
  swiftLanguageVersions: [.v5]
)
