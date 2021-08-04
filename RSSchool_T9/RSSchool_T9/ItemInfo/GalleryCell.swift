//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Дарья Воробей
// On: 8/3/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

import Foundation
import UIKit

class GalleryCell: UICollectionViewCell{
    
    var data: String? {
            didSet {
                guard let data = data else { return }
                bg.image = UIImage(named:data)
                
            }
        }
        
        fileprivate let bg: UIImageView = {
           let iv = UIImageView()
            iv.translatesAutoresizingMaskIntoConstraints = false
            iv.contentMode = .scaleAspectFill
            iv.clipsToBounds = true
                    iv.layer.cornerRadius = 12
            return iv
        }()
        
        override init(frame: CGRect) {
            super.init(frame: .zero)
            


            
            contentView.addSubview(bg)

            bg.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
            bg.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
            bg.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
            bg.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true

        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
}
