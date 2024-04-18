// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FirebaseJWTMiddleware",
    platforms: [
       .macOS(.v13)
    ],
    products: [
        .library(name: "FirebaseJWTMiddleware", targets: ["FirebaseJWTMiddleware"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        .package(url: "https://github.com/vapor/jwt.git", from: "5.0.0-beta.2"),
        .package(url: "https://github.com/vapor/jwt-kit.git", from: "5.0.0-beta.2.1"),
    ],
    targets: [
        .target(name: "FirebaseJWTMiddleware", dependencies: [
        .product(name: "Vapor", package: "vapor"),
        .product(name: "JWT", package: "jwt"),
        .product(name: "JWTKit", package: "jwt-kit"),
        ]),
        .testTarget(name: "FirebaseJWTMiddlewareTests", dependencies: [
            .target(name: "FirebaseJWTMiddleware"),
            .product(name: "XCTVapor", package: "vapor"),
        ]),
    ]
)
