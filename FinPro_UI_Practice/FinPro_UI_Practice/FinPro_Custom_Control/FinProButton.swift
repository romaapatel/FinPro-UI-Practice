//
//  FinProButton.swift
//  FinPro_UI_Practice
//
//  Created by Roma Patel on 29/04/22.
//

import Foundation
import UIKit

class FinProButton : UIButton {
    
    func setup() {
        self.layer.cornerRadius = 20
        self.clipsToBounds = true
        self.configuration?.contentInsets.top = 13
        self.configuration?.contentInsets.bottom = 13
        self.titleLabel?.font = UIFont(name: "Inter-Medium", size: 16)
        self.setTitleColor(UIColor.neutral10, for: .normal)
    }
    
    @IBInspectable public var buttonRadius: Int = 0 {
        didSet {
            self.layer.cornerRadius = 20
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
  
}
