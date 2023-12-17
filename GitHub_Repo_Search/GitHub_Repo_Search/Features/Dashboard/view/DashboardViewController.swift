//
//  DashboardViewController.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 16/12/23.
//

import UIKit
import CloudServices

class DashboardViewController: UIViewController {
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var resultTitle: UILabel!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!

    var presenter: DashboardViewToPresenterProtocol?
    var dataSource: SearchResponse? = nil

    override func viewDidLoad() {
        setupNavigation()
        setupSearchBar()
        setupCollectionView()
        setupTexts()
        setupActivityIndicator()
    }

    private func setupNavigation() {
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationItem.title = AppConstants.empty
    }

    private func setupSearchBar() {
        searchBar.layer.cornerRadius = 40
        searchBar.searchBarStyle = UISearchBar.Style.minimal
        searchBar.placeholder = AppConstants.searchPlaceholder
        searchBar.sizeToFit()
        searchBar.isTranslucent = false
        searchBar.backgroundImage = UIImage()
        searchBar.delegate = self

        searchBar.becomeFirstResponder()
    }

    private func setupCollectionView() {
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        collectionView.backgroundColor = .clear
    }

    private func setupTexts() {
        self.resultTitle.text = AppConstants.startRepoByLanguage
    }

    func setupActivityIndicator() {
        activityIndicator.color = .white
    }
}

// MARK: - Refresh Data
extension DashboardViewController: DashboardPresenterToViewProtocol {
    func showSearchResult(response: SearchResponse) {
        dataSource = response
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {
                return
            }
            self.activityIndicator.stopAnimating()
            if response.message == nil || response.message == "" {
                self.resultTitle.text = String(self.dataSource?.items?.count ?? 0) + AppConstants.space + AppConstants.matchingResults
            } else {
                self.resultTitle.text = self.dataSource?.message
            }
            self.collectionView.reloadData()
        }
    }

    func showError(errorMessage: String) {
        DispatchQueue.main.async { [weak self] in
            self?.activityIndicator.stopAnimating()
            self?.resultTitle.text = errorMessage
            self?.dataSource = nil
            self?.collectionView.reloadData()
        }
    }
}

// MARK: - Search Bar Delegates
extension DashboardViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        defer {
            // Get data based on search item
            searchBar.resignFirstResponder()
        }

        guard let searchText = searchBar.text else {
            return
        }
        resultTitle.text = AppConstants.gettingNewResults
        activityIndicator.startAnimating()
        presenter?.startFetchingRepositoryData(for: searchText)
    }
}

// MARK: - Collection View
extension DashboardViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource?.items?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: String(describing: RepositoryCollectionViewCell.self),
            for: indexPath
        ) as? RepositoryCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.configureCell(
            subTitle: dataSource?.items?[indexPath.row].fullName,
            title: dataSource?.items?[indexPath.row].name,
            about: dataSource?.items?[indexPath.row].description
        )
        return cell

    }
}

extension DashboardViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = UIScreen.main.bounds.width
        let width = screenWidth / 2 - 20

        return CGSize(width: width, height: 190)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
}

extension DashboardViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let item = dataSource?.items?[indexPath.row] else {
            return
        }
        presenter?.showRepositoryDetailViewController(navigationController: navigationController, detail: item)
    }
}
