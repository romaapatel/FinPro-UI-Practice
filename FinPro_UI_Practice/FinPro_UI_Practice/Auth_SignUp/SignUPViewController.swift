//
//  SignUPViewController.swift
//  FinPro_UI_Practice
//
//  Created by Roma Patel on 03/05/22.
//

import UIKit

class SignUPViewController: UIViewController {
    
    @IBOutlet weak var lblTerms: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var passwordTextField: FinProTextFieldPassword!
    @IBOutlet weak var tvEmail: FinProTextField!
    @IBOutlet weak var tvName: FinProTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        setTermsAndConditionLabel()
        scrollView.integrateWithKeyboard()
    }
    
    @IBAction func onClickOfBtnCreateAccount(_ sender: Any) {
        makeAlert(title: "Account Created", message: "Account is Successfully Created")
    }
    private func setTermsAndConditionLabel() {
        
        let FirstplainAttributedString = NSMutableAttributedString(string: "By signing up you agree to our ", attributes: [NSAttributedString.Key.foregroundColor : UIColor.neutral60])
        let FirstlinkAttributedString = NSMutableAttributedString(string: "Terms", attributes: [NSAttributedString.Key.foregroundColor : UIColor.neutral100])
        let SecondplainAttributedString = NSMutableAttributedString(string: " and", attributes: [NSAttributedString.Key.foregroundColor : UIColor.neutral60])
        let SecondlinkAttributedString = NSMutableAttributedString(string: " Conditions of Use", attributes: [NSAttributedString.Key.foregroundColor : UIColor.neutral100])
        let fullAttributedString = NSMutableAttributedString()
        fullAttributedString.append(FirstplainAttributedString)
        fullAttributedString.append(FirstlinkAttributedString)
        fullAttributedString.append(SecondplainAttributedString)
        fullAttributedString.append(SecondlinkAttributedString)
        lblTerms.attributedText = fullAttributedString
        lblTerms.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapedOnLabel(_ :)))
        tapGesture.numberOfTapsRequired = 1
        self.lblTerms.addGestureRecognizer(tapGesture)
    }
    
    @objc func tapedOnLabel(_ gesture: UITapGestureRecognizer) {
        guard let text = self.lblTerms.text else { return }
        let termsCondition = (text as NSString).range(of: "Terms")
        if gesture.didTapAttributedTextInLabel(label: lblTerms, inRange: termsCondition) {
        }
        
        let privacy = (text as NSString).range(of: "Conditions of Use")
        if gesture.didTapAttributedTextInLabel(label: lblTerms, inRange: privacy) {
        }
    }
}

extension SignUPViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case tvName:
            tvName.resignFirstResponder()
            tvEmail.becomeFirstResponder()
        case tvEmail:
            tvEmail.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
        case passwordTextField:
            passwordTextField.resignFirstResponder()
        default:
            break
        }
        return true
    }
}

