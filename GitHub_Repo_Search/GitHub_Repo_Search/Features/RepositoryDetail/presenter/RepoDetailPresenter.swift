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
    
    /// View calling presenter for start fetching the data
    func startFetchingRepoDetailData() {
        interactor?.fetchAndSendRepoDetailData()
    }
}

extension RepoDetailPresenter: RepoDetailInteractorToPresenterProtocol {

    /// Responsible for sending data to the view
    /// - Parameter data: Items i.e. RepoDetail
    func getSuccessResponse(data: Items) {
        view?.populateRepoData(data: data)
    }
}
