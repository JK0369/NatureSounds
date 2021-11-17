//
//  HomeTabBarController.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import UIKit

class HomeTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addAndSetVC()
        setupTabBarUI()
    }
    
    private func addAndSetVC() {
        let soundVC = SoundBuilder.build()
        let customVC = CustomBuilder.build()
        let clockVC = ClockBuilder.build()
        let settingVC = SettingBuilder.build()
        
        let soundNaviVC = UINavigationController(rootViewController: soundVC)
        let customNaviVC = UINavigationController(rootViewController: customVC)
        let clockNaviVC = UINavigationController(rootViewController: clockVC)
        let settingNaviVC = UINavigationController(rootViewController: settingVC)
        
        [soundNaviVC, customNaviVC, clockNaviVC, settingNaviVC].forEach {
            $0.navigationBar.tintColor = .white
            $0.navigationBar.barTintColor = .white
            $0.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        }
        
        setViewControllers([soundNaviVC, customNaviVC, clockNaviVC, settingNaviVC], animated: false)
    }
    
    private func setupTabBarUI() {
        tabBar.backgroundColor = .transparentBlack
        /// 선택되지 않았을 때의 색상
        tabBar.barTintColor = .white
        /// 선택 되었을 때의 색상
        tabBar.tintColor = .white
    }
}
