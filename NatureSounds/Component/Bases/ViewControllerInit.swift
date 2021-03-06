//
//  ViewControllerInit.swift
//  BaseMVVM
//
//  Created by 김종권 on 2021/10/16.
//

import UIKit

protocol ViewControllerInit {
    associatedtype VM
    associatedtype Router

    var viewModel: VM! { get set }
    var router: Router! { get set }

    static func instantiate(viewModel: VM) -> Self
    init(viewModel: VM)

    func setupViews()
    func addSubviews()
    func makeConstraints()
    func bindInputs()
    func bindOutputs()
}

extension ViewControllerInit where Self: UIViewController {

    static func instantiate(viewModel: VM) -> Self {
        let vc = Self(viewModel: viewModel)
        return vc
    }

    init(viewModel: VM) {
        self.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
        
        setupViews()
        addSubviews()
        makeConstraints()
        bindInputs()
        bindOutputs()
    }

}

