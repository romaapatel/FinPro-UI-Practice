//
//  UIViewExtension.swift
//  FinPro_UI_Practice
//
//  Created by Roma Patel on 03/05/22.
//

import UIKit

extension UIView {
    var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = self.next
        while parentResponder != nil {
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
            parentResponder = parentResponder?.next
        }
        return nil
    }
}
