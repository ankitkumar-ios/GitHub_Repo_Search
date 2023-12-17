//
//  DashboardRouter.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 16/12/23.
//

import UIKit

class DashboardRouter: DashboardPresenterToRouterProtocol {
    func mainstoryboard() -> UIStoryboard {
        return UIStoryboard(name:"Main",bundle: Bundle.main)
    }

    func createModule() -> DashboardViewController {
        let view = mainstoryboard().instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
        let presenter: DashboardViewToPresenterProtocol & DashboardIntractorToPresenterProtocol = DashboardPresenter()
        var interactor: DashboardPresenterToInteractorProtocol = DashboardIntractor()
        let router: DashboardPresenterToRouterProtocol = DashboardRouter()

        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        return view
    }

    func pushToRepositoryDetailViewController(navigationController: UINavigationController) {
        let repoDetailVC = RepoDetailRouter().createModule()
        navigationController.pushViewController(repoDetailVC, animated: true)
    }

}
