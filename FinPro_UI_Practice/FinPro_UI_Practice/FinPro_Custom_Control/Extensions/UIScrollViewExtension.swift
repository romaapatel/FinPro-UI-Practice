//
//  UIScrollViewExtension.swift
//  FinPro_UI_Practice
//
//  Created by Roma Patel on 03/05/22.
//
import UIKit

extension UIScrollView {
    
    func integrateWithKeyboard() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardAppear), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDisappear), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardAppear(_ notification:NSNotification) {
        guard let userInfo = notification.userInfo else { return }
        guard var keyboardFrame:CGRect = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue else { return }
        guard let viewController = self.parentViewController else { return }
        keyboardFrame = viewController.view.convert(keyboardFrame, from: nil)
        
        var contentInset: UIEdgeInsets = self.contentInset
        contentInset.bottom = keyboardFrame.size.height + 100
        self.contentInset = contentInset
    }
    
    @objc func keyboardDisappear(notification:NSNotification) {
        let contentInset: UIEdgeInsets = UIEdgeInsets.zero
        self.contentInset = contentInset
    }
}
