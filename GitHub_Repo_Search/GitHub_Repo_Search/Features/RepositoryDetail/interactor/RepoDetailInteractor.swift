//
//  RepoDetailInteractor.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 17/12/23.
//

import UIKit
import CloudServices

class RepoDetailInteractor: RepoDetailPresenterToInteractorProtocol {
    weak var presenter: RepoDetailInteractorToPresenterProtocol?
    var dataSource: Items?
    
    ///  Reponsible for getting data from the API
    func fetchAndSendRepoDetailData() {
        if let dataSource = dataSource {
            presenter?.getSuccessResponse(data: dataSource)
        }
    }
}
