//
//  RepoDetailRouter.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 17/12/23.
//

import UIKit

class RepoDetailRouter: RepoDetailPresenterToRouterProtocol {
    private func mainStoryboard() -> UIStoryboard {
        UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    func createModule() -> RepoDetailViewController {
        let view = mainStoryboard().instantiateViewController(withIdentifier: String(describing: RepoDetailViewController.self)) as! RepoDetailViewController

        let presenter: RepoDetailViewToPresenterProtocol = RepoDetailPresenter()
        presenter.router = RepoDetailRouter()
        presenter.interactor = RepoDetailInteractor()

        view.presenter = presenter

        return view
    }
    
    func openNextViewController() {
        
    }
}
