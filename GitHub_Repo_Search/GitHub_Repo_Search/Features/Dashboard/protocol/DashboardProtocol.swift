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
    func showRepositoryDetailViewController(navigationController: UINavigationController?)
}

protocol DashboardPresenterToViewProtocol: AnyObject {
    var presenter: DashboardViewToPresenterProtocol? {get set}
    func showSearchResult(response: SearchResponse)
    func showError()
}

protocol DashboardPresenterToInteractorProtocol {
    var presenter: DashboardIntractorToPresenterProtocol? {get set}
    func fetchRepositoryData(for query: String)
}

protocol DashboardPresenterToRouterProtocol {
    func createModule() -> DashboardViewController
    func pushToRepositoryDetailViewController(navigationController: UINavigationController?)
}

protocol DashboardIntractorToPresenterProtocol: AnyObject {
    func repositoryDataFetchedSuccess(response: SearchResponse)
    func repositoryDataFetchedError()
}
