//
//  RepoDetailPresenterTest.swift
//  GitHub_Repo_SearchTests
//
//  Created by Ankit Kumar on 17/12/23.
//

import XCTest
@testable import CloudServices
@testable import GitHub_Repo_Search

final class RepoDetailPresenterTest: XCTestCase {
    func test_populateRepoDataCounter_called() throws {
        let presenter = RepoDetailPresenter()
        let view = MockRepoDetailViewController()

        view.presenter = presenter
        presenter.view = view

        presenter.getSuccessResponse(data: Items())
        XCTAssertEqual(1, view.populateRepoDataCounter)
    }

    func test_populateRepoDataCounter_called1() throws {
        let presenter = RepoDetailPresenter()
        let interactor = MockRepoDetailIntractor()

        interactor.presenter = presenter
        presenter.interactor = interactor

        presenter.startFetchingRepoDetailData()
        XCTAssertEqual(1, interactor.fetchAndSendRepoDetailDataCounter)
    }
}
