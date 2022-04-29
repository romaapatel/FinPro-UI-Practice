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
    
}
