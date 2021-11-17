//
//  AppAppearance.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import UIKit

class AppAppearance {
    static func setupAppearnce() {
        UINavigationBar.appearance().prefersLargeTitles = true
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
    }
}
