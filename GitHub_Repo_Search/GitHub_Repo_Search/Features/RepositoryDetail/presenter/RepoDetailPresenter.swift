//
//  RepoDetailPresenter.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 17/12/23.
//

import UIKit

class RepoDetailPresenter: RepoDetailViewToPresenterProtocol {
    var view: RepoDetailPresenterToViewProtocol?
    var router: RepoDetailPresenterToRouterProtocol?
    var interactor: RepoDetailPresenterToInteractorProtocol?
    
    func start() {

    }
}

extension RepoDetailPresenter: RepoDetailInteractorToPresenterProtocol {
    func getSuccessResponse() {

    }
    
    func getFailureResponse() {

    }
}
