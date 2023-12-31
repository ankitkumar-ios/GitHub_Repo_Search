//
//  DashboardIntractor.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 16/12/23.
//

import UIKit
import CloudServices

class DashboardIntractor: DashboardPresenterToInteractorProtocol {
    weak var presenter: DashboardIntractorToPresenterProtocol?
    var cloudRepo: ICloudRepo = CloudRepo()

    /// Responsible for calling the cloudRepo for the API calling
    /// - Parameter query: Search string
    func fetchRepositoryData(for query: String) {
        cloudRepo.getRepositoryList(for: query) { [weak self] result in
            guard let self = self else {
                self?.presenter?.repositoryDataFetchedError(error: ServiceError.badData)
                return
            }
            switch result {
            case let .failure(serviceError):
                self.presenter?.repositoryDataFetchedError(error: serviceError)

            case let .success(response):
                self.presenter?.repositoryDataFetchedSuccess(response: response)
            }
        }
    }
}
