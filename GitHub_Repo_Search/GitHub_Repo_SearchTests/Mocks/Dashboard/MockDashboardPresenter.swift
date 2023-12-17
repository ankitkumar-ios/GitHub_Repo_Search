//
//  MockDashboardPresenter.swift
//  GitHub_Repo_SearchTests
//
//  Created by Ankit Kumar on 17/12/23.
//

import UIKit
@testable import GitHub_Repo_Search
@testable import CloudServices

class MockDashboardPresenter: DashboardIntractorToPresenterProtocol, DashboardViewToPresenterProtocol {
    var view: GitHub_Repo_Search.DashboardPresenterToViewProtocol?
    var interactor: GitHub_Repo_Search.DashboardPresenterToInteractorProtocol?
    var router: GitHub_Repo_Search.DashboardPresenterToRouterProtocol?

    func startFetchingRepositoryData(for query: String) {
        // Not needed
    }

    func showRepositoryDetailViewController(navigationController: UINavigationController?, detail: CloudServices.Items) {
        // Not needed
    }

    var dataFetchedSuccessCounter = 0
    func repositoryDataFetchedSuccess(response: CloudServices.SearchResponse) {
        dataFetchedSuccessCounter += 1
    }
    
    var dataFetchedErrorCounter = 0
    func repositoryDataFetchedError(error: CloudServices.ServiceError) {
        dataFetchedErrorCounter += 1
    }
}

