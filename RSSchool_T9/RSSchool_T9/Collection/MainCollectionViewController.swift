//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Дарья Воробей
// On: 7/31/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit


class MainCollectionViewController: UIViewController {

    fileprivate let data = ItemViewModel()
    
    var dataArray: [Item] = []
    fileprivate let collectionView:UICollectionView = {
           let layout = UICollectionViewFlowLayout()
           layout.scrollDirection = .vertical
           let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
           cv.translatesAutoresizingMaskIntoConstraints = false
           cv.register(CustomCell.self, forCellWithReuseIdentifier: "cell")
           return cv
       }()
    
    override func viewDidLoad() {
           super.viewDidLoad()
        self.view.backgroundColor = .white
        
        
           view.addSubview(collectionView)
           collectionView.backgroundColor = .white
           collectionView.delegate = self
           collectionView.dataSource = self
       
           collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        
        if UIDevice.current.orientation.isLandscape {
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150).isActive = true
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150).isActive = true
            print("Landscape")
        }
        else{
           collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
           collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        }
        collectionView.heightAnchor.constraint(equalToConstant: 800).isActive = true
        dataArray = data.fillArray()
       }
}



extension MainCollectionViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (UIScreen.main.bounds.width - 56)/2, height: (UIScreen.main.bounds.height-200)/3)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
        
        func numberOfSections(in collectionView: UICollectionView) -> Int
        { return 1 }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCell
        cell.data = self.dataArray[indexPath.item]
        return cell
    }
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        let user = dataArray[indexPath.row]
        let detailVC = ItemInfoViewController()
        detailVC.itemToDisplay = user
        show(detailVC, sender: self)
    }
}




class CustomCell: UICollectionViewCell {
    
    var data: Item? {
        didSet {
            guard let data = data else { return }
            bg.image = UIImage(named: data.image)
            title.text = data.title
            mark.text = data.mark
        }
    }
    
    fileprivate let bg: UIImageView = {
       let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
                iv.layer.cornerRadius = 10
        return iv
    }()
    
    fileprivate let title: UILabel = {
       let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont(name: "Rockwell-Bold", size: 16)
        title.textColor = UIColor.white
        return title
    }()
    
    fileprivate let mark: UILabel = {
       let mark = UILabel()
        mark.translatesAutoresizingMaskIntoConstraints = false
        mark.font = UIFont(name: "Rockwell-Bold", size: 12)
        mark.textColor = UIColor.white
        return mark
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        

        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 15, left: 5, bottom: 15, right:5))
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = UIColor.black.cgColor
        contentView.layer.cornerRadius = 18
        contentView.addSubview(bg)
        contentView.addSubview(title)
        contentView.addSubview(mark)

        bg.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        bg.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        bg.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10).isActive = true
        bg.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        
        mark.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 190).isActive = true
        mark.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 18).isActive = true
        mark.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -23).isActive = true
        mark.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        
        title.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 161).isActive = true
        title.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 18).isActive = true
        title.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -15).isActive = true
        title.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -23).isActive = true

    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



