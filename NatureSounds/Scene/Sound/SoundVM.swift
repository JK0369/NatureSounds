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
    var sounds: [Sounds] { get }
    var numberOfSounds: Int { get }
}

protocol SoundVM: SoundVMInput, SoundVMOutput {}

final class SoundVMImpl: SoundVM {
    
    struct Dependencies {}
    
    private let dependencies: Dependencies
    
    var sounds = [Sounds]()
    var numberOfSounds: Int { return sounds.count }
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
        self.sounds = Resource.soundResource
    }
    
    // MARK: - Input
    
    
}
