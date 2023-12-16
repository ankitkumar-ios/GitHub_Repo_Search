//
//  MockSearchService.swift
//  CloudServicesTests
//
//  Created by Ankit Kumar on 15/12/23.
//

import Foundation
@testable import CloudServices

class MockSearchService: SearchServiceProtocol {
    var response: Result<SearchResponse, ServiceError>

    init(response: Result<SearchResponse, ServiceError>) {
        self.response = response
    }

    func getRepositoryList(
        for language: String,
        completion: @escaping (Result<CloudServices.SearchResponse, CloudServices.ServiceError>) -> Void
    ) {
        completion(response)
    }
}
