//
//  BaseViewController.swift
//  BaseMVVM
//
//  Created by 김종권 on 2021/10/15.
//

import UIKit
import RxSwift

class BaseViewController: UIViewController {

    let disposeBag = DisposeBag()

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()
    }

    func configure() {
        setupBaseUI()
        setupBackgroundView()
    }

    private func setupBaseUI() {
        view.backgroundColor = .systemBackground
    }
    
    private func setupBackgroundView() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.deepBlue.withAlphaComponent(0.8).cgColor, UIColor.shallowGreen.cgColor, UIColor.pastelGreen.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        view.layer.addSublayer(gradientLayer)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
