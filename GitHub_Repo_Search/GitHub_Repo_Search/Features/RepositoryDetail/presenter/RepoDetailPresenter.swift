//
//  RepoDetailPresenter.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 17/12/23.
//

import UIKit
import CloudServices

class RepoDetailPresenter: RepoDetailViewToPresenterProtocol {
    weak var view: RepoDetailPresenterToViewProtocol?
    var router: RepoDetailPresenterToRouterProtocol?
    var interactor: RepoDetailPresenterToInteractorProtocol?

    func startFetchingRepoDetailData() {
        interactor?.fetchAndSendRepoDetailData()
    }
}

extension RepoDetailPresenter: RepoDetailInteractorToPresenterProtocol {
    func getSuccessResponse(data: Items) {
        view?.populateRepoData(data: data)
    }
    
    func getFailureResponse() {

    }
}
