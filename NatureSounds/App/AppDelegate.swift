//
//  AppDelegate.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let homeTabBarController = HomeTabBarController()
        window?.rootViewController = homeTabBarController
        window?.makeKeyAndVisible()
        return true
    }
}
