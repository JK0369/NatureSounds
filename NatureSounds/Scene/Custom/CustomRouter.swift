//
//  CustomRouter.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import UIKit

class CustomRouter: BaseRouter {
    weak var viewController: UIViewController?
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
}
