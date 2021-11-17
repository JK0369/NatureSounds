//
//  CustomBuilder.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import Foundation

class CustomBuilder {
    static func build() -> CustomVC {
        let dependencies = CustomVMImpl.Dependencies()
        let vm = CustomVMImpl(dependencies: dependencies)
        return CustomVC.instantiate(viewModel: vm)
    }
}
