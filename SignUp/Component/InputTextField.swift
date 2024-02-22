//
//  InputTextField.swift
//  SignUp
//
//  Created by 조유진 on 2/23/24.
//

import UIKit

class InputTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    private func configureView() {
        backgroundColor = .systemGray6
        borderStyle = .none
        layer.cornerRadius = 10
        clipsToBounds = true
        layer.borderWidth = 1.5
        layer.borderColor = UIColor.systemGray4.cgColor
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

