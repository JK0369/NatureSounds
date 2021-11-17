//___FILEHEADER___

import Foundation

protocol ___VARIABLE_productName:identifier___VMInput {
    
}

protocol ___VARIABLE_productName:identifier___VMOutput {
    
}

protocol ___VARIABLE_productName:identifier___VM: ___VARIABLE_productName:identifier___VMInput, ___VARIABLE_productName:identifier___VMOutput {}

final class ___VARIABLE_productName:identifier___VMImpl: ___VARIABLE_productName:identifier___VM {
    
    struct Dependencies {}
    
    private let dependencies: Dependencies
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
}
