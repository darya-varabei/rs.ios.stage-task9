//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Дарья Воробей
// On: 8/1/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

import Foundation
import UIKit

class ItemInfoViewController: UIViewController{
    
    let scrollView = UIScrollView()
    let horizontalScrollView = UIScrollView()
    let contentView = UIView()
    
    var itemToDisplay: Item?{
        didSet {
            guard let data = itemToDisplay else { return }
            mainImage.image = UIImage(named: data.image)
            titleName.text = data.title
            mark.text = data.mark
            story.text = data.story
        }
    }
    
    fileprivate let mainImage: UIImageView = {
        let iv = UIImageView()
        
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 10
        return iv
    }()
    
    fileprivate let titleName: UILabel = {
        let iv = UILabel()
        
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 10
        return iv
    }()
    
    fileprivate let mark: UILabel = {
        let iv = UILabel()
        
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 10
        return iv
    }()
    
    fileprivate let collectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(DrawingCell.self, forCellWithReuseIdentifier: "cellDrawing")
        return cv
    }()
    
    fileprivate let galleryCollectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(GalleryCell.self, forCellWithReuseIdentifier: "cellGallery")
        return cv
    }()
    
    fileprivate let story: UITextView = {
        let iv = UITextView()
        
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    var gallery: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        setupScrollView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.view.backgroundColor = .black
        self.gallery = itemToDisplay?.gallery
        let crossButton = UIButton()
        crossButton.translatesAutoresizingMaskIntoConstraints = false
        crossButton.layer.borderWidth = 2
        crossButton.layer.cornerRadius = 20
        crossButton.layer.borderColor = UIColor.white.cgColor
        crossButton.setImage(UIImage(systemName: "xmark"), for: .normal)
        crossButton.tintColor = .white
        contentView.addSubview(crossButton)
        crossButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30).isActive = true
        crossButton.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: UIScreen.main.bounds.width-65).isActive = true
        crossButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -25).isActive = true
        crossButton.heightAnchor.constraint(equalToConstant:40).isActive = true
        
        self.mainImage.image = UIImage(named: itemToDisplay!.image)
        self.mainImage.layer.borderWidth = 1
        self.mainImage.layer.borderColor = UIColor.white.cgColor
        contentView.addSubview(self.mainImage)
        self.mainImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 100).isActive = true
        self.mainImage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        self.mainImage.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        self.mainImage.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height-300).isActive = true
        
        self.titleName.font = UIFont(name: "Rockwell-Bold", size: 48)
        self.titleName.textColor = UIColor.white
        contentView.addSubview(self.titleName)
        self.titleName.bottomAnchor.constraint(equalTo: contentView.topAnchor, constant: -55).isActive = true
        self.titleName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: (UIScreen.main.bounds.height/5)*3).isActive = true
        self.titleName.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 50).isActive = true
        self.titleName.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -50).isActive = true
        
        self.mark.font = UIFont(name: "Rockwell-Regular", size: 24)
        self.mark.textColor = UIColor.white
        self.mark.textAlignment = .center
        self.mark.backgroundColor = UIColor.black
        self.mark.layer.borderColor = UIColor.white.cgColor
        self.mark.layer.borderWidth = 1
        self.mark.layer.cornerRadius = 8
        contentView.addSubview(self.mark)
        self.mark.bottomAnchor.constraint(equalTo: self.mainImage.bottomAnchor, constant: 20).isActive = true
        self.mark.topAnchor.constraint(equalTo: self.mainImage.bottomAnchor, constant: -20).isActive = true
        self.mark.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 146).isActive = true
        self.mark.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -146).isActive = true
        
        
        if self.story.text.count != 0{
        self.story.font = UIFont(name: "Rockwell-Regular", size: 24)
        self.story.textColor = UIColor.white
        self.story.textAlignment = .center
        self.story.backgroundColor = UIColor.black
        self.story.layer.borderColor = UIColor.white.cgColor
        self.story.layer.borderWidth = 1
        self.story.textContainerInset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
        
        self.story.layer.cornerRadius = 8
        self.story.textAlignment = .left
        contentView.addSubview(self.story)
        self.story.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor).isActive = true
        self.story.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: UIScreen.main.bounds.height).isActive = true
        self.story.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        self.story.rightAnchor.constraint(equalTo:contentView.rightAnchor, constant: -20).isActive = true
        self.story.heightAnchor.constraint(equalToConstant: 1350).isActive = true
        }
        
        else if gallery?.count != 0{
        contentView.addSubview(self.galleryCollectionView)
        self.galleryCollectionView.backgroundColor = .black
        self.galleryCollectionView.delegate = self
        self.galleryCollectionView.dataSource = self
     
        self.galleryCollectionView.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor).isActive = true
            self.galleryCollectionView.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: UIScreen.main.bounds.height).isActive = true
        self.galleryCollectionView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        self.galleryCollectionView.rightAnchor.constraint(equalTo:contentView.rightAnchor, constant: -20).isActive = true
            self.galleryCollectionView.heightAnchor.constraint(equalToConstant: (UIScreen.main.bounds.height - 100)*CGFloat(gallery!.count)+20).isActive = true
        }
    }
    
    
    func setupScrollView(){
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    }
    
}


extension ItemInfoViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("Theiewbicukeglckuwbe.bweksjcb\(itemToDisplay?.gallery?.count ?? 10000)")
        return itemToDisplay?.gallery?.count ?? 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = galleryCollectionView.dequeueReusableCell(withReuseIdentifier: "cellGallery", for: indexPath) as! GalleryCell
        cell.data = self.gallery![indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 60, height: UIScreen.main.bounds.height - 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        let user = gallery![indexPath.row]
        let detailVC = PhotoModalView()
        detailVC.data = user
        show(detailVC, sender: self)
    }
}

