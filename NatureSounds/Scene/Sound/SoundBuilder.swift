//
//  SoundBuilder.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import Foundation

class SoundBuilder {
    static func build() -> SoundVC {
        let dependencies = SoundVMImpl.Dependencies()
        let vm = SoundVMImpl(dependencies: dependencies)
        return SoundVC.instantiate(viewModel: vm)
    }
}
