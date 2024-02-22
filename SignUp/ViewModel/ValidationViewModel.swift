//
//  ValidateViewModel.swift
//  SignUp
//
//  Created by 조유진 on 2/23/24.
//

import Foundation

class ValidationViewModel {
    var inputText = Observable("")
    var outputResult = Observable("")
    
    init() {
        inputText.bind { value in
            self.validation(value)
        }
    }
    
    private func validation(_ text: String) {
        
    }
    
}
