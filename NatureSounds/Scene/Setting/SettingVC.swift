//
//  SettingVC.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import UIKit
import RxSwift
import RxCocoa
import SnapKit

final class SettingVC: BaseViewController, ViewControllerInit {
    
    var viewModel: SettingVM!
    var router: SettingRouter!
    
    override func configure() {
        super.configure()
        router = SettingRouter(viewController: self)
    }
    
    func setupViews() {
        
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
