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

    // call the cloudservice for calling api
    func fetchRepositoryData(for query: String) {
        



//        presenter?.repositoryDataFetchedSuccess(response: )
//        presenter?.repositoryDataFetchedError()
    }
}
