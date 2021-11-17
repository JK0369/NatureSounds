//
//  UIView.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import Foundation
import UIKit

extension UIView {
    func setPrimaryColor() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [UIColor.deepBlue.withAlphaComponent(0.8).cgColor, UIColor.shallowGreen.cgColor, UIColor.pastelGreen.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        layer.addSublayer(gradientLayer)
    }
}
    
