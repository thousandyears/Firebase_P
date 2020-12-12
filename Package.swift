// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Firebase_P",
    products: [
        .library(name: "Firebase_P", targets: ["Firebase_P"]),
        .library(name: "Firestore_P", targets: ["Firestore_P"]),
        .library(name: "Crashlytics_P", targets: ["Crashlytics_P"])
    ],
    targets: [
        .target(name: "Firebase_P", dependencies: ["Firestore_P", "Crashlytics_P"]),
        .target(name: "Firestore_P"),
        .target(name: "Crashlytics_P")
    ]
)
