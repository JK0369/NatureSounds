//
//  SettingVM.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import Foundation

protocol SettingVMInput {
    
}

protocol SettingVMOutput {
    
}

protocol SettingVM: SettingVMInput, SettingVMOutput {}

final class SettingVMImpl: SettingVM {
    
    struct Dependencies {}
    
    private let dependencies: Dependencies
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
}
