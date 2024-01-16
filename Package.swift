dependencies: [
    // Dependencies declare other packages that this package depends on.
    // .package(url: /* package url */, from: "1.0.0"),
    .package(url: "https://github.com/Swinject/Swinject.git", from: "2.8.0")
],
targets: [
    .target(
        name: "comidaBebe",
        dependencies: [..., "Swinject"]
    )
    ...
]