//
//  FinProBaseLabel.swift
//  FinPro_UI_Practice
//
//  Created by Roma Patel on 03/05/22.
//

import Foundation
import UIKit

class FinProH3Label : UILabel {
    
    func setup() {
        self.font = UIFont(name: "Inter-SemiBold", size: 18)
        self.textColor = UIColor.neutral100
        self.backgroundColor = UIColor.white
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

class FinProH2Label : UILabel {
    
    func setup() {
        self.font = UIFont(name: "Inter-SemiBold", size: 24)
        self.backgroundColor = UIColor.white
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

class FinProH5RegularLabel : UILabel {
    
    func setup() {
        self.font = UIFont(name: "Inter-Regular", size: 14)
        self.textColor = UIColor.neutral100
        self.backgroundColor = UIColor.white
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.3
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

class FinProH5SemiBoldLabel : UILabel {
    
    func setup() {
        self.font = UIFont(name: "Inter-SemiBold", size: 14)
        self.textColor = UIColor.neutral100
        self.backgroundColor = UIColor.white
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.3
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

class FinProH4MediumLabel : UILabel {
    
    func setup() {
        self.font = UIFont(name: "Inter-Medium", size: 16)
        self.textColor = UIColor.neutral100
        self.backgroundColor = UIColor.white
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.24
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

class FinProH5MediumLabel : UILabel {
    
    func setup() {
        self.font = UIFont(name: "Inter-Medium", size: 14)
        self.textColor = UIColor.neutral60
        self.backgroundColor = UIColor.white
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.3
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
