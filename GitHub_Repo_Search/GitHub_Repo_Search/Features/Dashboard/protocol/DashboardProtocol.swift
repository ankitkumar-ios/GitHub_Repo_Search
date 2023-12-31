//
//  DashboardProtocol.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 16/12/23.
//

import UIKit
import CloudServices

/// Used for the communication from view to presenter
protocol DashboardViewToPresenterProtocol: AnyObject {
    var view: DashboardPresenterToViewProtocol? {get set}
    var interactor: DashboardPresenterToInteractorProtocol? {get set}
    var router: DashboardPresenterToRouterProtocol? {get set}

    func startFetchingRepositoryData(for query: String)
    func showRepositoryDetailViewController(navigationController: UINavigationController?, detail: Items)
}
/// Used for the communication from presenter to view
protocol DashboardPresenterToViewProtocol: AnyObject {
    var presenter: DashboardViewToPresenterProtocol? {get set}
    func showSearchResult(response: SearchResponse)
    func showError(errorMessage: String)
}

/// Used for the communication from presenter to interactor
protocol DashboardPresenterToInteractorProtocol {
    var presenter: DashboardIntractorToPresenterProtocol? {get set}
    func fetchRepositoryData(for query: String)
}

/// Used for the communication from presenter to router
protocol DashboardPresenterToRouterProtocol {
    func createModule() -> DashboardViewController
    func pushToRepositoryDetailViewController(navigationController: UINavigationController?, itemData: Items)
}

/// Used for the communication from interactor to presenter
protocol DashboardIntractorToPresenterProtocol: AnyObject {
    func repositoryDataFetchedSuccess(response: SearchResponse)
    func repositoryDataFetchedError(error: ServiceError)
}
