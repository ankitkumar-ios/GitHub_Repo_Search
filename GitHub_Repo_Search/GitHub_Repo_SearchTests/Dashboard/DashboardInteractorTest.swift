//
//  DashboardInteractorTest.swift
//  GitHub_Repo_SearchTests
//
//  Created by Ankit Kumar on 17/12/23.
//

import XCTest
@testable import CloudServices
@testable import GitHub_Repo_Search

final class DashboardInteractorTest: XCTestCase {
    func test_repositoryDataFetchedSuccess_called() throws {
        let interactor = DashboardIntractor()
        let presenter = MockDashboardPresenter()
        let cloudRepo = MockCloudRepo()

        interactor.presenter = presenter
        presenter.interactor = interactor
        interactor.cloudRepo = cloudRepo

        cloudRepo.completionResponse = .success(SearchResponse())
        interactor.fetchRepositoryData(for: "Swift")
        XCTAssertEqual(1, presenter.dataFetchedSuccessCounter)

        cloudRepo.completionResponse = .failure(.responseError(code: HTTPStatusCode.forbidden))
        interactor.fetchRepositoryData(for: "Swift")
        XCTAssertEqual(1, presenter.dataFetchedErrorCounter)
    }
}
