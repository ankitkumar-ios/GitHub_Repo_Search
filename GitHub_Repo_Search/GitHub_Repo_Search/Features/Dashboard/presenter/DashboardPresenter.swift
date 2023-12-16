//
//  DashboardPresenter.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 16/12/23.
//

import UIKit
import CloudServices

class DashboardPresenter: DashboardViewToPresenterProtocol {
    var view: DashboardPresenterToViewProtocol?
    var interactor: DashboardPresenterToInteractorProtocol?
    var router: DashboardPresenterToRouterProtocol?

    func startFetchingRepositoryData(for query: String) {
        interactor?.fetchRepositoryData(for: query)
    }

    func showRepositoryDetailViewController(navigationController: UINavigationController) {
        router?.pushToRepositoryDetailViewController(navigationController: navigationController)
    }
}

extension DashboardPresenter: DashboardIntractorToPresenterProtocol {
    func repositoryDataFetchedSuccess(response: SearchResponse) {
        view?.showSearchResult(response: response)
    }
    
    func repositoryDataFetchedError() {
        view?.showError()
    }
}

