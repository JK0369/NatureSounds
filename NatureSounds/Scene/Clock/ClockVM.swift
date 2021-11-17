//
//  ClockVM.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import Foundation

protocol ClockVMInput {
    
}

protocol ClockVMOutput {
    
}

protocol ClockVM: ClockVMInput, ClockVMOutput {}

final class ClockVMImpl: ClockVM {
    
    struct Dependencies {}
    
    private let dependencies: Dependencies
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
}
