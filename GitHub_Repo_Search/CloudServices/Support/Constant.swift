//
//  Constant.swift
//  CloudServices
//
//  Created by Ankit Kumar on 15/12/23.
//

import Foundation

struct Constant {
    static let host = "api.github.com"
    static let schemeHTTPS = "https"
    static let language = "language"
    static let colon = ":"
}

public enum HTTPStatusCode: Int {
    case ok = 200
    case badRequest = 400
    case unauthorized = 401
    case forbidden = 403
    case notFound = 404
    case internalServerError = 500
}
