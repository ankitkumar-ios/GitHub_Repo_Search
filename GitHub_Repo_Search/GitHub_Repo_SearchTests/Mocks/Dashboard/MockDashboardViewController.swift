//
//  MockDashboardViewController.swift
//  GitHub_Repo_SearchTests
//
//  Created by Ankit Kumar on 17/12/23.
//

import UIKit
@testable import GitHub_Repo_Search
@testable import CloudServices

class MockDashboardViewController: DashboardPresenterToViewProtocol {
    var presenter: DashboardViewToPresenterProtocol?

    var showSearchResultCounter = 0
    func showSearchResult(response: SearchResponse) {
        showSearchResultCounter += 1
    }

    var actualErrorMessage: String?
    func showError(errorMessage: String) {
        self.actualErrorMessage = errorMessage
    }
}
