//___FILEHEADER___

import Foundation

class ___VARIABLE_productName:identifier___Builder {
    static func build() -> ___VARIABLE_productName:identifier___VC {
        let dependencies = ___VARIABLE_productName:identifier___VMImpl.Dependencies()
        let vm = ___VARIABLE_productName:identifier___VMImpl(dependencies: dependencies)
        return ___VARIABLE_productName:identifier___VC.instantiate(viewModel: vm)
    }
}
