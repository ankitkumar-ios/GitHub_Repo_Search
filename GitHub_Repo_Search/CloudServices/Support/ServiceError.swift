//
//  ServiceError.swift
//  CloudServices
//
//  Created by Ankit Kumar on 15/12/23.
//

import Foundation

/// Error types
public enum ServiceError: Error {
    case noInternet
    case badData
    case invalidURL
    case serviceError(error: Error)
    case responseError(code: HTTPStatusCode)
}
