//
//  MockCloudRepo.swift
//  GitHub_Repo_SearchTests
//
//  Created by Ankit Kumar on 17/12/23.
//

import UIKit
@testable import GitHub_Repo_Search
@testable import CloudServices

class MockCloudRepo: ICloudRepo {
    var completionResponse: Result<CloudServices.SearchResponse, CloudServices.ServiceError> = .failure(.invalidURL)
    func getRepositoryList(
        for query: String,
        completion: @escaping (Result<CloudServices.SearchResponse, CloudServices.ServiceError>) -> Void
    ) {
        completion(completionResponse)
    }
}
