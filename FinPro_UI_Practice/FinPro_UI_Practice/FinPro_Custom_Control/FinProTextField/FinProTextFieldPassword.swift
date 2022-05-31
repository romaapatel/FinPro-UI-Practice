//
//  FinProTextFieldPassword.swift
//  FinPro_UI_Practice
//
//  Created by Roma Patel on 02/05/22.
//

import UIKit

class FinProTextFieldPassword: FinProTextField {

    let imageIcon = UIButton()

    override func setup() {
        super.setup()
        imageIcon.addTarget(self, action: #selector(self.passwordToggle), for: .touchUpInside)
        let contentView = UIView()
        contentView.addSubview(imageIcon)
        contentView.frame = CGRect(x: 0, y: 0, width: 30, height: 20)
        imageIcon.frame = CGRect(x: -15, y: 0, width: 30, height: 20)
        self.rightView = contentView
        self.rightViewMode = .always
        self.isSecureTextEntry = true
        imageIcon.backgroundColor = UIColor.clear
        imageIcon.isSelected = true
        imageIcon.setImage(UIImage(named: "passwordHidden"), for: .normal)
        imageIcon.tintColor = UIColor.neutral100
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    @objc func passwordToggle(_ sender: UIButton) {
        if (sender.isSelected) {
            sender.isSelected = !sender.isSelected
            imageIcon.setImage(UIImage(named: "passwordHidden"), for: .normal)
            self.isSecureTextEntry = false
            imageIcon.imageView?.image?.withRenderingMode(.alwaysTemplate)
        } else {
            sender.isSelected = !sender.isSelected
            imageIcon.setImage(UIImage(named: "passwordShow"), for: .normal)
            self.isSecureTextEntry = true
            imageIcon.imageView?.image?.withRenderingMode(.alwaysTemplate)
        }
    }
}
