//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Дарья Воробей
// On: 8/2/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

import Foundation
import UIKit

//class DrawingViewController: UIView{
//    
//    var storyPath: [CGPath]!
//    
//    fileprivate let collectionView:UICollectionView = {
//           let layout = UICollectionViewFlowLayout()
//           layout.scrollDirection = .horizontal
//           let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
//           cv.translatesAutoresizingMaskIntoConstraints = false
//           cv.register(DrawingCell.self, forCellWithReuseIdentifier: "cellDrawing")
//           return cv
//       }()
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.view.backgroundColor = .black
//           view.addSubview(collectionView)
//           collectionView.backgroundColor = .white
//           collectionView.delegate = self
//           collectionView.dataSource = self
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//
//    }
//
//}

//extension DrawingViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return storyPath.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellDrawing", for: indexPath) as! DrawingCell
//        cell.data = self.storyPath[indexPath.item]
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 73, height: 61)
//    }
//}

class DrawingCell: UICollectionViewCell{
    
    var data: Item? {
            didSet {
                guard let data = data else { return }
                bg.image = UIImage(named:data.image)
                
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
