//
//  SignUpView.swift
//  SignUp
//
//  Created by 조유진 on 2/23/24.
//

import UIKit
import SnapKit

class SignUpView: BaseView {
    let titleLabel = UILabel()
    let emailTextField = InputTextField()
    let passwordTextField = InputTextField()
    let nicknameTextField = InputTextField()
    let locationTextField = InputTextField()
    let recommendCodeTextField = InputTextField()
    let messageLabel = UILabel()
    
    let signupButton = UIButton()
    
    override func configureHierarchy() {
        [titleLabel, emailTextField, passwordTextField, nicknameTextField, locationTextField, recommendCodeTextField, messageLabel, signupButton].forEach {
            addSubview($0)
        }
    }
    override func configureLayout() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide).offset(50)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(24)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(50)
            make.width.equalTo(300)
            make.centerX.equalToSuperview()
            make.height.equalTo(44)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(12)
            make.width.equalTo(300)
            make.centerX.equalToSuperview()
            make.height.equalTo(44)
        }
        nicknameTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(12)
            make.width.equalTo(300)
            make.centerX.equalToSuperview()
            make.height.equalTo(44)
        }
        locationTextField.snp.makeConstraints { make in
            make.top.equalTo(nicknameTextField.snp.bottom).offset(12)
            make.width.equalTo(300)
            make.centerX.equalToSuperview()
            make.height.equalTo(44)
        }
        recommendCodeTextField.snp.makeConstraints { make in
            make.top.equalTo(locationTextField.snp.bottom).offset(12)
            make.width.equalTo(300)
            make.centerX.equalToSuperview()
            make.height.equalTo(44)
        }
        messageLabel.snp.makeConstraints { make in
            make.top.equalTo(recommendCodeTextField.snp.bottom).offset(6)
            make.centerX.equalToSuperview()
            make.height.equalTo(14)
        }
        
        signupButton.snp.makeConstraints { make in
            make.top.equalTo(messageLabel.snp.bottom).offset(40)
            make.width.equalTo(300)
            make.centerX.equalToSuperview()
            make.height.equalTo(44)
        }
    }
    override func configureView() {
        titleLabel.design(text: "회원가입")
        messageLabel.design(text: "", font: .systemFont(ofSize: 14), textColor: .red, textAlignment: .left)
        
        emailTextField.placeholder = "이메일 주소"
        passwordTextField.placeholder = "비밀번호"
        nicknameTextField.placeholder = "닉네임"
        locationTextField.placeholder = "위치"
        recommendCodeTextField.placeholder = "추천 코드"
        
        signupButton.setTitle("회원가입", for: .normal)
        signupButton.titleLabel?.font = .boldSystemFont(ofSize: 16)
        signupButton.setTitleColor(.white, for: .normal)
        signupButton.backgroundColor = .systemMint
        
        signupButton.layer.cornerRadius = 10
        signupButton.clipsToBounds = true
    }
}
