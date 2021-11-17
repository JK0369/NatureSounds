//
//  SoundVC.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import UIKit
import RxSwift
import RxCocoa
import SnapKit

final class SoundVC: BaseViewController, ViewControllerInit {
    
    var viewModel: SoundVM!
    var router: SoundRouter!
    
    override func configure() {
        super.configure()
        router = SoundRouter(viewController: self)
    }
    
    func setupViews() {
        title = "sound"
        tabBarItem.image = UIImage(systemName: "music.note.list")
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
