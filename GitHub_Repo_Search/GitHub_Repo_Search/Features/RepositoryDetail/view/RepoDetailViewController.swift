//
//  RepoDetailViewController.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 17/12/23.
//

import UIKit
import CloudServices

class RepoDetailViewController: UIViewController {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var aboutLabel: UILabel!
    @IBOutlet var ownerNameLabel: UILabel!
    @IBOutlet var languageLabel: UILabel!
    @IBOutlet var createAtLabel: UILabel!
    @IBOutlet var sizeLabel: UILabel!
    @IBOutlet var watcherLabel: UILabel!
    @IBOutlet var starsLabel: UILabel!
    @IBOutlet var issueCountLabel: UILabel!
    @IBOutlet var forkCountLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!

    @IBOutlet var topDetailContainerView: UIView!

    var presenter: RepoDetailViewToPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        presenter?.startFetchingRepoDetailData()
    }

    private func setupLayout() {
        topDetailContainerView.clipsToBounds = true
        topDetailContainerView.layer.cornerRadius = 20
        topDetailContainerView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
}

extension RepoDetailViewController: RepoDetailPresenterToViewProtocol {
    func populateRepoData(data: Items) {
        DispatchQueue.main.async { [weak self] in
            self?.nameLabel.text = data.name
            self?.fullNameLabel.text = data.fullName
            self?.aboutLabel.text = data.description
            self?.ownerNameLabel.text = data.owner?.login
            self?.languageLabel.text = data.language
            self?.createAtLabel.text = data.createdAt
            self?.sizeLabel.text = String(data.size ?? 0) + AppConstants.space + AppConstants.kb
            self?.watcherLabel.text = String(data.watchersCount ?? 0)
            self?.starsLabel.text = String(data.stargazersCount ?? 0)
            self?.issueCountLabel.text = String(data.openIssuesCount ?? 0)
            self?.forkCountLabel.text = String(data.forksCount ?? 0)
            self?.scoreLabel.text = String(data.score ?? 0)
        }
    }
}
