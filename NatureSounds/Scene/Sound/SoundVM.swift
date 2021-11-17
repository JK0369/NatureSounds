//
//  SoundVM.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import Foundation

protocol SoundVMInput {
    
}

protocol SoundVMOutput {
    
}

protocol SoundVM: SoundVMInput, SoundVMOutput {}

final class SoundVMImpl: SoundVM {
    
    struct Dependencies {}
    
    private let dependencies: Dependencies
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
}
