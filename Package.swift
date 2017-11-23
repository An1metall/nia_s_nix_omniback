import PackageDescription
 
let package = Package(
    name: "nia_s_nix_omniback",
    dependencies: [
        .Package(
        url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git",
        majorVersion: 3
        )
    ]
)
