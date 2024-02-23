//
//  ViewController.swift
//  SignUp
//
//  Created by 조유진 on 2/23/24.
//

import UIKit

class SignUpViewController: UIViewController {
    let mainView = SignUpView()
    
    let validationViewModel = ValidationViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 텍스트필드 액션 설정
        setTextFieldAction()
        mainView.signupButton.addTarget(self, action: #selector(signupButtonClicked), for: .touchUpInside)
    }
    
    // 회원가입 버튼 클릭했을 때
    @objc private func signupButtonClicked() {
        
    }
    
    private func setTextFieldAction() {
        mainView.emailTextField.addTarget(self, action: #selector(emailTextFieldChanged), for: .editingChanged)
        mainView.passwordTextField.addTarget(self, action: #selector(passwordTextFieldChanged), for: .editingChanged)
        mainView.nicknameTextField.addTarget(self, action: #selector(nicknameTextFieldChanged), for: .editingChanged)
        mainView.locationTextField.addTarget(self, action: #selector(locationTextFieldChanged), for: .editingChanged)
        mainView.recommendCodeTextField.addTarget(self, action: #selector(recommendCodeTextFieldChanged), for: .editingChanged)
    }

    override func loadView() {
        view = mainView
    }

    @objc private func emailTextFieldChanged() {    // 이메일 검증
        validationViewModel.inputEmailText.text = mainView.emailTextField.text!
    }
    @objc private func passwordTextFieldChanged() { // 비밀번호 검증
        validationViewModel.inputPasswordText.text = mainView.passwordTextField.text!
    }
    @objc private func nicknameTextFieldChanged() { // 닉네임 검증
        validationViewModel.inputNicknameText.text = mainView.nicknameTextField.text!
    }
    @objc private func locationTextFieldChanged() { // 위치 검증
        validationViewModel.inputLoctionText.text = mainView.locationTextField.text!
    }
    @objc private func recommendCodeTextFieldChanged() {    // 추천코드 검증
        validationViewModel.inputRecommendationCodeText.text = mainView.recommendCodeTextField.text!
    }
}


