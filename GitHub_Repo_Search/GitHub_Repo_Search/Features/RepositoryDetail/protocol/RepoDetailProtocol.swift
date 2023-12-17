//
//  RepoDetailProtocol.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 17/12/23.
//

import UIKit
import CloudServices

protocol RepoDetailViewToPresenterProtocol: AnyObject {
    var view: RepoDetailPresenterToViewProtocol? {get set}
    var router: RepoDetailPresenterToRouterProtocol? {get set}
    var interactor: RepoDetailPresenterToInteractorProtocol? {get set}
    func startFetchingRepoDetailData()
}

protocol RepoDetailPresenterToViewProtocol: AnyObject {
    var presenter: RepoDetailViewToPresenterProtocol? {get set}
    func populateRepoData(data: Items)
}

protocol RepoDetailPresenterToRouterProtocol {
    func createModule(data: Items) -> RepoDetailViewController
}

protocol RepoDetailPresenterToInteractorProtocol: AnyObject {
    var dataSource: Items? {get set}
    var presenter: RepoDetailInteractorToPresenterProtocol? {get set}
    func fetchAndSendRepoDetailData()
}

protocol RepoDetailInteractorToPresenterProtocol: AnyObject {
    func getSuccessResponse(data: Items)
}
