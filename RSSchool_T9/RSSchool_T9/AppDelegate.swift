//
// 📰 🐸
// Project: RSSchool_T9
//
// Author: Uladzislau Volchyk
// On: 23.07.21
//
// Copyright © 2021 RSSchool. All rights reserved.

//import UIKit
//
//@main
//class AppDelegate: UIResponder, UIApplicationDelegate {
//    var window : UIWindow?
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        self.window = self.window ?? UIWindow()
//
//        self.window?.rootViewController = MainCollectionViewController()
//        self.window?.makeKeyAndVisible()
//        return true
//    }
//
//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//    }
//}

import UIKit
@UIApplicationMain
class AppDelegate : UIResponder, UIApplicationDelegate {
    var window : UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?)
        -> Bool {
    
            // if self.window is nil then set a new UIWindow object to self.window.
            self.window = self.window ?? UIWindow()
            
            // Set self.window's background color to red.
            //self.window!.backgroundColor = UIColor.red
        
            // Create a ViewController object and set it as self.window's root view controller.
            self.window!.rootViewController = ScrollViewController()
        
            // Make the window be visible.
            self.window!.makeKeyAndVisible()
        
            return true
    }
}
