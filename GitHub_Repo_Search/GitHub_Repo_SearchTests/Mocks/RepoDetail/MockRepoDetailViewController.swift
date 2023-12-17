//
//  MockRepoDetailViewController.swift
//  GitHub_Repo_SearchTests
//
//  Created by Ankit Kumar on 17/12/23.
//

import UIKit
@testable import GitHub_Repo_Search
@testable import CloudServices

class MockRepoDetailViewController: RepoDetailPresenterToViewProtocol {
    var presenter: GitHub_Repo_Search.RepoDetailViewToPresenterProtocol?

    var populateRepoDataCounter = 0
    func populateRepoData(data: CloudServices.Items) {
        populateRepoDataCounter += 1
    }
}
