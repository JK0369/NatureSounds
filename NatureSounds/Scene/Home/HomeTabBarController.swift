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
    }
    
    private func addAndSetVC() {
        let soundVC = SoundBuilder.build()
        let customVC = CustomBuilder.build()
        let clockVC = ClockBuilder.build()
        let settingVC = SettingBuilder.build()
        
        let soundNaviVC = UINavigationController(rootViewController: soundVC)
        let customNaviVC = UINavigationController(rootViewController: customVC)
        let ClockNaviVC = UINavigationController(rootViewController: clockVC)
        let settingNaviVC = UINavigationController(rootViewController: settingVC)
        
        setViewControllers([soundNaviVC, customNaviVC, ClockNaviVC, settingNaviVC], animated: false)
    }
}
