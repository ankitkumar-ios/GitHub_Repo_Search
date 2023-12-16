//
//  SearchService.swift
//  CloudServices
//
//  Created by Ankit Kumar on 15/12/23.
//

import Foundation

protocol SearchServiceProtocol {
    func getRepositoryList(
        for language: String,
        completion: @escaping(Result<SearchResponse, ServiceError>) -> Void
    )
}

public struct SearchService: SearchServiceProtocol {
    private let environment: CloudEnvironment
    private let serviceHelper: ServiceHelperProtocol
    public static let timeout: TimeInterval = 10

    /// Setting the init with environment to get the baseUrl
    /// - Parameters:
    ///   - environment: CloudEnvironemnt
    ///   - serviceHelper: ServiceHelper
    public init(
        environment: CloudEnvironment = SearchEnvironment(),
        serviceHelper: ServiceHelper = ServiceHelper(timeout: SearchService.timeout)
    ) {
        self.environment = environment
        self.serviceHelper = serviceHelper
    }

    /// Get list of repository data from the API call
    /// - Parameter completion: Getting success or failure
    public func getRepositoryList(
        for language: String,
        completion: @escaping(Result<SearchResponse, ServiceError>) -> Void
    ) {
        guard let url = environment.getBaseUrl(with: language) else {
            completion(.failure(.invalidURL))
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = HTTPMethod.get.rawValue
        request.addValue(HTTPConstant.headerValueContentTypeJson, forHTTPHeaderField: HTTPConstant.headerKeyContentType)
        serviceHelper.executeRequest(request: request, completion: completion)
    }
}
