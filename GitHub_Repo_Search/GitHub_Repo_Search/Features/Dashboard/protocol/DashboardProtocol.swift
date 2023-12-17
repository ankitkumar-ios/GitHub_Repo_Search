//
//  DashboardProtocol.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 16/12/23.
//

import UIKit
import CloudServices

protocol DashboardViewToPresenterProtocol: AnyObject {
    var view: DashboardPresenterToViewProtocol? {get set}
    var interactor: DashboardPresenterToInteractorProtocol? {get set}
    var router: DashboardPresenterToRouterProtocol? {get set}

    func startFetchingRepositoryData(for query: String)
    func showRepositoryDetailViewController(navigationController: UINavigationController?, detail: Items)
}

protocol DashboardPresenterToViewProtocol: AnyObject {
    var presenter: DashboardViewToPresenterProtocol? {get set}
    func showSearchResult(response: SearchResponse)
    func showError(errorMessage: String)
}

protocol DashboardPresenterToInteractorProtocol {
    var presenter: DashboardIntractorToPresenterProtocol? {get set}
    func fetchRepositoryData(for query: String)
}

protocol DashboardPresenterToRouterProtocol {
    func createModule() -> DashboardViewController
    func pushToRepositoryDetailViewController(navigationController: UINavigationController?, itemData: Items)
}

protocol DashboardIntractorToPresenterProtocol: AnyObject {
    func repositoryDataFetchedSuccess(response: SearchResponse)
    func repositoryDataFetchedError(error: ServiceError)
}
