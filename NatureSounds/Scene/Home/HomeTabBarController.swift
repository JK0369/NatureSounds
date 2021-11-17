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
        soundVC.title = "sound"
        soundVC.tabBarItem.image = UIImage(systemName: "music.note.list")
        
        let customVC = CustomBuilder.build()
        customVC.title = "custom"
        customVC.tabBarItem.image = UIImage(systemName: "person.fill")
        
        let clockVC = ClockBuilder.build()
        clockVC.title = "clock"
        clockVC.tabBarItem.image = UIImage(systemName: "clock.fill")
        
        let settingVC = SettingBuilder.build()
        settingVC.title = "setting"
        settingVC.tabBarItem.image = UIImage(systemName: "gearshape.fill")
        
        let soundNaviVC = UINavigationController(rootViewController: soundVC)
        let customNaviVC = UINavigationController(rootViewController: customVC)
        let ClockNaviVC = UINavigationController(rootViewController: clockVC)
        let settingNaviVC = UINavigationController(rootViewController: settingVC)
        
        setViewControllers([soundNaviVC, customNaviVC, ClockNaviVC, settingNaviVC], animated: false)
    }
}
