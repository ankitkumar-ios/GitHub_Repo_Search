//
//  RepositoryCollectionViewCell.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 16/12/23.
//

import UIKit

class RepositoryCollectionViewCell: UICollectionViewCell {
    @IBOutlet var subTitle: UILabel!
    @IBOutlet var title: UILabel!
    @IBOutlet var about: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .red
    }

    func configureCell(subTitle: String?, title: String?, about: String?) {
        self.subTitle.text = subTitle
        self.title.text = title
        self.about.text = about
    }

}
