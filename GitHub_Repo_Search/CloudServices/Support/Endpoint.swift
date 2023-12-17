//
//  Endpoint.swift
//  CloudServices
//
//  Created by Ankit Kumar on 15/12/23.
//

import Foundation

struct Endpoint {
    let scheme: String
    let host: String
    let path: String
    let queryItems: [URLQueryItem]?

    var url: URL? {
        var components = URLComponents()
        components.scheme = scheme
        components.host = host
        components.path = path
        components.queryItems = queryItems?.isEmpty ?? true ? nil : queryItems
        return components.url
    }
}
