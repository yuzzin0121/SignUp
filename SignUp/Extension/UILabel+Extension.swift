//
//  UILabel+Extension.swift
//  SignUp
//
//  Created by 조유진 on 2/23/24.
//

import UIKit

extension UILabel {
    func design(text: String, font: UIFont = .boldSystemFont(ofSize: 24), textColor: UIColor = .black, textAlignment: NSTextAlignment = .center, numberOfLines: Int = 1) {
        self.text = text
        self.font = font
        self.textColor = textColor
        self.numberOfLines = numberOfLines
        self.textAlignment = textAlignment
    }
}

