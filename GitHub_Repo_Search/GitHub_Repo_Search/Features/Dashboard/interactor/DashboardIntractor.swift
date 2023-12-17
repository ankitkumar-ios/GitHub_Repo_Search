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
    var cloudRepo = CloudRepo()

    // call the cloudservice for calling api
    func fetchRepositoryData(for query: String) {
        cloudRepo.getRepositoryList(for: query) { [weak self] result in
            guard let self = self else {
                self?.presenter?.repositoryDataFetchedError()
                return
            }
            switch result {
            case .failure(_):
                self.presenter?.repositoryDataFetchedError()

            case let .success(response):
                self.presenter?.repositoryDataFetchedSuccess(response: response)
            }
        }
    }
}
