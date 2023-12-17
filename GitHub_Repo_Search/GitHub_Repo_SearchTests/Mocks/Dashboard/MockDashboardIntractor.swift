//
//  MockDashboardIntractor.swift
//  GitHub_Repo_SearchTests
//
//  Created by Ankit Kumar on 17/12/23.
//

import UIKit
@testable import GitHub_Repo_Search
@testable import CloudServices

class MockDashboardIntractor: DashboardPresenterToInteractorProtocol {
    var presenter: DashboardIntractorToPresenterProtocol?

    var fetchRepositoryDataCounter = 0
    func fetchRepositoryData(for query: String) {
        fetchRepositoryDataCounter += 1
    }
}
