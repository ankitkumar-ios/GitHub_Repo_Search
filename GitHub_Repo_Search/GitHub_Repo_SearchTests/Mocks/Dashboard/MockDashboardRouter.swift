//
//  MockDashboardRouter.swift
//  GitHub_Repo_SearchTests
//
//  Created by Ankit Kumar on 17/12/23.
//

import UIKit
@testable import GitHub_Repo_Search
@testable import CloudServices

class MockDashboardRouter: DashboardPresenterToRouterProtocol {
    func createModule() -> DashboardViewController {
        // not needed
        return DashboardViewController()
    }

    var pushCounter = 0
    func pushToRepositoryDetailViewController(navigationController: UINavigationController?, itemData: CloudServices.Items) {
        pushCounter += 1
    }
}


