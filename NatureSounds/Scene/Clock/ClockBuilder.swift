//
//  ClockBuilder.swift
//  NatureSounds
//
//  Created by 김종권 on 2021/11/17.
//

import Foundation

class ClockBuilder {
    static func build() -> ClockVC {
        let dependencies = ClockVMImpl.Dependencies()
        let vm = ClockVMImpl(dependencies: dependencies)
        return ClockVC.instantiate(viewModel: vm)
    }
}
