//
//  BindingTextField.swift
//  GoodWeather
//
//  Created by Taejune Jung on 19/04/2019.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit

class BindingTextField: UITextField {
    
    var textChangeClosure: (String) -> () = { _ in }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func bind(callback: @escaping (String) -> ()) {
        self.textChangeClosure = callback
    }
    
    private func commonInit() {
        self.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)
    }
    
    @objc func textFieldChanged(_ textField: UITextField) {
        if let text = textField.text {
            self.textChangeClosure(text)
        }
    }
}

