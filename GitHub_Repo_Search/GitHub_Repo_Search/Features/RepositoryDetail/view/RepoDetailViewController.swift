//
//  RepoDetailViewController.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 17/12/23.
//

import UIKit

class RepoDetailViewController: UIViewController {
    weak var presenter: RepoDetailViewToPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension RepoDetailViewController: RepoDetailPresenterToViewProtocol {
    func getRepoData() {
        
    }
}
