//
//  MockRepoDetailInteractor.swift
//  GitHub_Repo_SearchTests
//
//  Created by Ankit Kumar on 17/12/23.
//

import UIKit
@testable import GitHub_Repo_Search
@testable import CloudServices

class MockRepoDetailIntractor: RepoDetailPresenterToInteractorProtocol {
    var dataSource: CloudServices.Items?
    var presenter: GitHub_Repo_Search.RepoDetailInteractorToPresenterProtocol?

    var fetchAndSendRepoDetailDataCounter = 0
    func fetchAndSendRepoDetailData() {
        fetchAndSendRepoDetailDataCounter += 1
    }
}
