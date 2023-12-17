//
//  DashboardPresenter.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 16/12/23.
//

import UIKit
import CloudServices

class DashboardPresenter: DashboardViewToPresenterProtocol {
    weak var view: DashboardPresenterToViewProtocol?
    var interactor: DashboardPresenterToInteractorProtocol?
    var router: DashboardPresenterToRouterProtocol?

    func startFetchingRepositoryData(for query: String) {
        interactor?.fetchRepositoryData(for: query)
    }

    func showRepositoryDetailViewController(navigationController: UINavigationController?, detail: Items) {
        router?.pushToRepositoryDetailViewController(navigationController: navigationController, itemData: detail)
    }
}

extension DashboardPresenter: DashboardIntractorToPresenterProtocol {
    func repositoryDataFetchedSuccess(response: SearchResponse) {
        view?.showSearchResult(response: response)
    }
    
    func repositoryDataFetchedError(error: ServiceError) {
        var message = AppConstants.badData

        switch error {
        case .badData:
            message = AppConstants.badData
        case .noInternet:
            message = AppConstants.noInternetConnection
        case .invalidURL:
            message = AppConstants.invalidUrl
        case .serviceError(error: let error):
            message = "Got error: " + error.localizedDescription
        case .responseError(code: let code):
            switch code {
            case .ok:
                break;
            case .couldNotFindData:
                message = AppConstants.couldNotFindData
            case .badRequest:
                message = AppConstants.badRequest
            case .unauthorized:
                message = AppConstants.unauthorized
            case .forbidden:
                message = AppConstants.forbidden
            case .notFound:
                message = AppConstants.notFound
            case .internalServerError:
                message = AppConstants.internalServiceError
            }
        }
        view?.showError(errorMessage: message)
    }
}

