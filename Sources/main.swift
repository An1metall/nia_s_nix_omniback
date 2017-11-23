//
//  main.swift
//  nia_s_nix_omniback
//
//  Created by Roman Bardashov on 22.10.17.
//  Copyright © 2017 Roman Bardashov. All rights reserved.
//
import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

let server = HTTPServer()

var routes = Routes()
routes.add(method: .get, uri: "/") { (request, response) in
    response.setHeader(.contentType, value: "text/html")
    response.appendBody(string: "<html><title>Hello, world!</title><body>Hello, world!</body></html>")
    response.completed()
}

server.addRoutes(routes)
server.serverPort = 8181

do {
    try server.start()
} catch PerfectError.networkError(let err, let msg) {
    print("Network error thrown: \(err) \(msg)")
}
