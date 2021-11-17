//
//  ClockVC.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import UIKit
import RxSwift
import RxCocoa
import SnapKit

final class ClockVC: BaseViewController, ViewControllerInit {
    
    var viewModel: ClockVM!
    var router: ClockRouter!
    
    override func configure() {
        super.configure()
        router = ClockRouter(viewController: self)
    }
    
    func setupViews() {
        title = "clock"
        tabBarItem.image = UIImage(systemName: "clock.fill")
    }
    
    func addSubviews() {
        
    }
    
    func makeConstraints() {
        
    }
    
    func bindInputs() {
        
    }
    
    func bindOutputs() {
        
    }
}
