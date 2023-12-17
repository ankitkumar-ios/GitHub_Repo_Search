//
//  RepoDetailProtocol.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 17/12/23.
//

import UIKit

protocol RepoDetailViewToPresenterProtocol: AnyObject {
    var view: RepoDetailPresenterToViewProtocol? {get set}
    var router: RepoDetailPresenterToRouterProtocol? {get set}
    var interactor: RepoDetailPresenterToInteractorProtocol? {get set}
    func start()
}

protocol RepoDetailPresenterToViewProtocol {
    var presenter: RepoDetailViewToPresenterProtocol? {get set}
    func getRepoData()
}

protocol RepoDetailPresenterToRouterProtocol {
    func createModule() -> RepoDetailViewController
    func openNextViewController()
}

protocol RepoDetailPresenterToInteractorProtocol {
    var presenter: RepoDetailViewToPresenterProtocol? {get set}
    func fetchData()
}

protocol RepoDetailInteractorToPresenterProtocol {
    // No api calls needed
    func getSuccessResponse()
    func getFailureResponse()
}
