//
//  FinProTextField.swift
//  FinPro_UI_Practice
//
//  Created by Roma Patel on 02/05/22.
//

import Foundation
import UIKit

class FinProTextField: UITextField {
    
    var textPadding = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 10)
    let viewHeight: CGFloat = 20
   
    func setup() {
        let attributes = [NSAttributedString.Key.foregroundColor : UIColor.neutral70,
                          NSAttributedString.Key.font : UIFont(name:"Inter-SemiBold", size: 12)]
        self.attributedPlaceholder = NSAttributedString(string: self.placeholder ?? "", attributes: attributes)
        self.layer.cornerRadius = 20
        self.clipsToBounds = true
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.neutral20.cgColor
        self.backgroundColor = UIColor.neutral10
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    public func validate(validationType: ValidationTypes) -> Bool {
           switch(validationType) {
           case .email: return validateEmail()
           case .password: return validatePassword()
           case .requiredField: return validateRequired()
           }
       }
       private func validateEmail() -> Bool {
           let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
           let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
           if(emailPredicate.evaluate(with: self.text ?? "")) {
               self.layer.borderWidth = 0
               self.layer.borderColor = nil
               return true
           } else {
               self.layer.borderColor = UIColor.red.cgColor
               self.layer.borderWidth = 1
               self.window?.rootViewController?.makeAlert(title: "Error", message: "Enter Email")
               return false
           }
       }
       private func validatePassword() -> Bool {
           if(self.text?.count ?? -1 > 5) {
               self.layer.borderWidth = 0
               self.layer.borderColor = nil
               return true
           } else {
               self.layer.borderColor = UIColor.red.cgColor
               self.layer.borderWidth = 1
               self.window?.rootViewController?.makeAlert(title: "Error", message: "Password must have atleast 6 character")
               return false
           }
       }
       private func validateRequired() -> Bool {
           if(!(self.text?.isEmpty ?? true)) {
               self.layer.borderWidth = 0
               self.layer.borderColor = nil
               return true
           } else {
               self.layer.borderColor = UIColor.red.cgColor
               self.layer.borderWidth = 1
               self.window?.rootViewController?.makeAlert(title: "Error", message: "This field is required")
               return false
           }
       }
}

enum ValidationTypes {
    case email;
    case password;
    case requiredField
}
