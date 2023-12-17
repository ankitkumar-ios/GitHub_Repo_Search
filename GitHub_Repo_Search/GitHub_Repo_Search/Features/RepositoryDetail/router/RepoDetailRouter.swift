//
//  RepoDetailRouter.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 17/12/23.
//

import UIKit
import CloudServices

class RepoDetailRouter: RepoDetailPresenterToRouterProtocol {
    private func mainStoryboard() -> UIStoryboard {
        UIStoryboard(name: "Main", bundle: Bundle.main)
    }

    /// Responsible for initializating the module and return the ViewController instance
    /// - Parameter data: Repo Details data
    /// - Returns: RepoDetailViewController
    func createModule(data: Items) -> RepoDetailViewController {
        let view = mainStoryboard().instantiateViewController(withIdentifier: String(describing: RepoDetailViewController.self)) as! RepoDetailViewController
        let presenter: RepoDetailViewToPresenterProtocol & RepoDetailInteractorToPresenterProtocol = RepoDetailPresenter()
        let interactor: RepoDetailPresenterToInteractorProtocol = RepoDetailInteractor()
        let router: RepoDetailPresenterToRouterProtocol = RepoDetailRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        interactor.dataSource = data

        return view
    }
}
