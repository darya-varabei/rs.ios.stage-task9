//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Дарья Воробей
// On: 8/4/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

import Foundation
import UIKit

class PhotoModalView: UIViewController{
    var data: String? {
            didSet {
                guard let data = data else { return }
                bg.image = UIImage(named:data)
                
            }
        }
    
    let scrollView = UIScrollView()
        
        fileprivate let bg: UIImageView = {
           let iv = UIImageView()
            iv.translatesAutoresizingMaskIntoConstraints = false
            iv.contentMode = .scaleAspectFit
                    iv.layer.cornerRadius = 12
            return iv
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
       setupScrollView()
        
        scrollView.addSubview(bg)
        scrollView.setZoomScale(0.3, animated: true)
        scrollView.minimumZoomScale = 0.3
        scrollView.maximumZoomScale = 3
                
                scrollView.delegate = self
        
        bg.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        bg.leftAnchor.constraint(equalTo: scrollView.leftAnchor).isActive = true
        bg.rightAnchor.constraint(equalTo: scrollView.rightAnchor).isActive = true
        bg.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    }
    
    func setupScrollView(){
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        scrollView.topAnchor.constraint(equalTo:view.topAnchor, constant: 100).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        scrollView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height-300).isActive = true
    }
}


extension PhotoModalView: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return bg
    }
}
