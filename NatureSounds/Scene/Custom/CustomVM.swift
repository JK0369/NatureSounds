//
//  CustomVM.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import Foundation

protocol CustomVMInput {
    
}

protocol CustomVMOutput {
    
}

protocol CustomVM: CustomVMInput, CustomVMOutput {}

final class CustomVMImpl: CustomVM {
    
    struct Dependencies {}
    
    private let dependencies: Dependencies
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
}
