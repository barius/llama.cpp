// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "llama",
    products: [
        .library(name: "llama", targets: ["llama"]),
    ],
    targets: [
        .target(
            name: "llama",
            path: ".",
            exclude: ["main.cpp", "tests", "quantize.cpp"],
            cSettings: [.unsafeFlags(["-Wno-shorten-64-to-32"])]
        ),
    ],
    cxxLanguageStandard: .cxx11
)
