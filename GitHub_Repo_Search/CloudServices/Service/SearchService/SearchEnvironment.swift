//
//  SearchEnvironment.swift
//  CloudServices
//
//  Created by Ankit Kumar on 15/12/23.
//

import Foundation

/// Search environment helps to get the search endpoints
public struct SearchEnvironment: CloudEnvironment {
    /// Just to make initializer public
    public init() {}

    /// Returns baseURL
    /// - Returns: URL(optional)
    public func getBaseUrl(with query: String?) -> URL? {
        generateBaseEndpoint(with: query).url
    }

    private func generateBaseEndpoint(with query: String?) -> Endpoint {
        return Endpoint(
            scheme: getScheme(),
            host: getHost(),
            path: "/search/repositories",
            queryItems: getQueryItem(with: query)
        )
    }

    private func getQueryItem(with query: String?) -> [URLQueryItem] {
        guard let query = query else {
            return []
        }
        var queryItem = [URLQueryItem]()
        queryItem.append(URLQueryItem(name: "q", value: Constant.language + Constant.colon + query))
        return queryItem
    }
}
