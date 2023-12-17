//
//  RepoDetailProtocol.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 17/12/23.
//

import UIKit
import CloudServices

/// Used for the communication from view to presenter
protocol RepoDetailViewToPresenterProtocol: AnyObject {
    var view: RepoDetailPresenterToViewProtocol? {get set}
    var router: RepoDetailPresenterToRouterProtocol? {get set}
    var interactor: RepoDetailPresenterToInteractorProtocol? {get set}
    func startFetchingRepoDetailData()
}

/// Used for the communication from presenter to view
protocol RepoDetailPresenterToViewProtocol: AnyObject {
    var presenter: RepoDetailViewToPresenterProtocol? {get set}
    func populateRepoData(data: Items)
}

/// Used for the communication from presenter to router
protocol RepoDetailPresenterToRouterProtocol {
    func createModule(data: Items) -> RepoDetailViewController
}

/// Used for the communication from presenter to interactor
protocol RepoDetailPresenterToInteractorProtocol: AnyObject {
    var dataSource: Items? {get set}
    var presenter: RepoDetailInteractorToPresenterProtocol? {get set}
    func fetchAndSendRepoDetailData()
}

/// Used for the communication from interactor to presenter
protocol RepoDetailInteractorToPresenterProtocol: AnyObject {
    func getSuccessResponse(data: Items)
}
