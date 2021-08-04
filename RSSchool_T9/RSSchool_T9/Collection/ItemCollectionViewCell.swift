//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Дарья Воробей
// On: 7/31/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    static var identifier: String = "Cell"

        var textLabel: UILabel!
        var itemImage: UIImage!
        weak var itemMark: UILabel!

        override init(frame: CGRect) {
            super.init(frame: frame)
            self.backgroundColor = .white
            self.textLabel = UILabel(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width))
            let textLabel = UILabel(frame: .zero)
            textLabel.translatesAutoresizingMaskIntoConstraints = false
            self.contentView.addSubview(textLabel)
            NSLayoutConstraint.activate([
                self.contentView.centerXAnchor.constraint(equalTo: textLabel.centerXAnchor),
                self.contentView.centerYAnchor.constraint(equalTo: textLabel.centerYAnchor),
            ])
            self.textLabel = textLabel
            self.reset()
        }

        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        override func prepareForReuse() {
            super.prepareForReuse()
            self.reset()
        }

        func reset() {
            self.textLabel.textAlignment = .center
        }
}
