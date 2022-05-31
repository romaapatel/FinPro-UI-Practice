//
//  UIViewControllerExtension.swift
//  FinPro_UI_Practice
//
//  Created by Roma Patel on 03/05/22.
//

import UIKit

extension UIViewController {
func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
