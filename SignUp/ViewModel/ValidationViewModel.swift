//
//  ValidateViewModel.swift
//  SignUp
//
//  Created by 조유진 on 2/23/24.
//

import Foundation

class ValidationViewModel {
    var inputEmailText = Observable("")
    var inputPasswordText = Observable("")
    var inputNicknameText = Observable("")
    var inputLoctionText = Observable("")
    var inputRecommendationCodeText = Observable("")
    
    var outputResult = Observable("")
    
    init() {
        inputEmailText.bind { value in
            self.emailValidation(value)
        }
        inputPasswordText.bind { value in
            self.passwordValidation(value)
        }
        inputNicknameText.bind { value in
            self.nicknameValidation(value)
        }
        inputLoctionText.bind { value in
            self.locationValidation(value)
        }
        inputRecommendationCodeText.bind { value in
            self.recommendationCodeValidation(value)
        }
    }
    
    private func emailValidation(_ text: String) {
        // 1. 빈값
        if text.isEmpty {
            outputResult.text = "값을 입력해주세요"
        }
    }
    
    private func passwordValidation(_ text: String) {
        // 1. 빈값
        if text.isEmpty {
            outputResult.text = "값을 입력해주세요"
        }
        
    }
    
    private func nicknameValidation(_ text: String) {
        // 1. 빈값
        if text.isEmpty {
            outputResult.text = "값을 입력해주세요"
        }
        
        let lengthpattern = "^.{2,9}$"
        var isMatch = text.range(of: lengthpattern, options: .regularExpression) != nil
        if !isMatch {
            outputResult.text = "2이상 9이하의 글자수로 입력해주세요"
            return
        }
        
        let SpecialCharPattern = "^[^@#$%]*$"
        isMatch = text.range(of: SpecialCharPattern, options: .regularExpression) == nil
        
        if !isMatch  {
            outputResult.text = "특수문자를 제외한 문자들로 입력해주세요"
            return
        }
        
        let numberPattern = "^[^0-9]*$"
        isMatch = text.range(of: numberPattern, options: .regularExpression) == nil
        if !isMatch {
            outputResult.text = "숫자를 제외한 문자들로 입력해주세요"
            return
        }
    }
    
    private func locationValidation(_ text: String) {
        // 1. 빈값
        if text.isEmpty {
            outputResult.text = "값을 입력해주세요"
        }
    }
    
    private func recommendationCodeValidation(_ text: String) {
        // 1. 빈값
        if text.isEmpty {
            outputResult.text = "값을 입력해주세요"
        }
        
        // 2. 문자열이 숫자인지 문자인지 체크
        guard let num = Int(text) else {
            outputResult.text = "숫자만 입력해주세요"
            return
        }
    }
}
