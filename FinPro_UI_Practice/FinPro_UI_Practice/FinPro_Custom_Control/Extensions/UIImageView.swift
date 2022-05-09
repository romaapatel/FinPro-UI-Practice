//
//  UIImageView.swift
//  FinPro_UI_Practice
//
//  Created by Roma Patel on 04/05/22.
//

import Foundation
import UIKit

extension UIImageView {
    
    func makeRounded() {
        self.layer.borderWidth = 0.1
        self.layer.masksToBounds = false
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}
