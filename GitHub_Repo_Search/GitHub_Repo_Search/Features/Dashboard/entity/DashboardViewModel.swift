//
//  DashboardViewModel.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 16/12/23.
//

import UIKit
import CloudServices

protocol DashboardViewModelProtocol: AnyObject {
    func updateUI()
}

// ViewModel is not needed as we are not doing any processing
// Not using this class

class DashboardViewModel {
    var presenter: DashboardPresenter?
    weak var delegate: DashboardViewModelProtocol?

    init(presenter: DashboardPresenter? = nil) {
        self.presenter = presenter
    }

    func getData(for query: String) {
        presenter?.startFetchingRepositoryData(for: query)
    }
}
