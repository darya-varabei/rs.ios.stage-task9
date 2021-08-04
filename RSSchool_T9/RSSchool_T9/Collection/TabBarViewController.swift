//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Дарья Воробей
// On: 7/31/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class ScrollViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            let tabOne = MainCollectionViewController()
            let tabOneBarItem = UITabBarItem(title: "Items", image: UIImage(systemName: "square.grid.2x2"), selectedImage: UIImage(named: "pencil"))
            
            tabOne.tabBarItem = tabOneBarItem
           
            let tabTwo = NaviViewController()
            let tabTwoBarItem2 = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), selectedImage: UIImage(named: "pencil"))
            
            tabTwo.tabBarItem = tabTwoBarItem2
            UITabBar.appearance().tintColor = UIColor.red
            
            self.viewControllers = [tabOne, tabTwo]
        }
        
}
