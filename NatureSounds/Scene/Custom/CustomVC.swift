//
//  CustomVC.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import UIKit
import RxSwift
import RxCocoa
import SnapKit

final class CustomVC: BaseViewController, ViewControllerInit {
    
    var viewModel: CustomVM!
    var router: CustomRouter!
    
    override func configure() {
        super.configure()
        router = CustomRouter(viewController: self)
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
