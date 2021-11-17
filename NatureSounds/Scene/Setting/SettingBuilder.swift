//
//  SettingBuilder.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import Foundation

class SettingBuilder {
    static func build() -> SettingVC {
        let dependencies = SettingVMImpl.Dependencies()
        let vm = SettingVMImpl(dependencies: dependencies)
        return SettingVC.instantiate(viewModel: vm)
    }
}
