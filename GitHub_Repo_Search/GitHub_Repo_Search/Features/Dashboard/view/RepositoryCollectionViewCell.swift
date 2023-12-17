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
        setupLayout()
    }

    private func setupLayout() {
        self.layer.cornerRadius = 15
        self.layer.masksToBounds = true

        self.about.preferredMaxLayoutWidth = self.about.bounds.width
    }

    func configureCell(subTitle: String?, title: String?, about: String?) {
        self.subTitle.text = subTitle
        self.title.text = title
        self.about.text = about
    }

}
