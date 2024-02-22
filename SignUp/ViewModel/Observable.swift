//
//  Observable.swift
//  SignUp
//
//  Created by 조유진 on 2/23/24.
//

import Foundation

class Observable {
    
    var closure: ((String) -> Void)?
    
    var text: String {
        didSet {
            closure?(text)
        }
    }
    init(_ text: String) {
        self.text = text
    }
    
    func bind(_ closure: @escaping (String) -> Void) {
        closure(text)
        self.closure = closure
    }
}
