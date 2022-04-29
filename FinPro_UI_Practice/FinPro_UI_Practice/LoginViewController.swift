//
//  ViewController.swift
//  FinPro_UI_Practice
//
//  Created by Roma Patel on 29/04/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var passwordTextField: FinProTextFieldPassword!
    @IBOutlet weak var emailAddresTextField: FinProTextField!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        [emailAddresTextField, passwordTextField].forEach { textField in
            textField?.delegate = self
        }
        scrollView.integrateWithKeyboard()
    }
    
    @IBAction func onClickBackBtn(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func onClickSignIn(_ sender: Any) {
        let isValidEmail = emailAddresTextField.validate(validationType: .email, vc: self, textField: emailAddresTextField)
        let isValidPassword = passwordTextField.validate(validationType: .password, vc: self, textField: passwordTextField)
        if (isValidEmail && isValidPassword) {
            let user = User(email: emailAddresTextField.text ?? "jb", password: passwordTextField.text ?? "jkb")
            sendPostRequest(requestType: .post, apiType: .signIn, body: user, apiResponse: self)
        }
    }
}

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case emailAddresTextField:
            emailAddresTextField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
        case passwordTextField:
            passwordTextField.resignFirstResponder()
        default:
            break
        }
        return true
    }
    
}

extension LoginViewController: APIResponse {
    func onApiFailure(error: Error) {
        makeAlert(title: "Error", message: error.error)
    }
    
    func onApiSucess(response: Response) {
        makeAlert(title: "Success", message: response.token)
    }
    
    func onFailure(message: String) {
        makeAlert(title: "Error", message: message)
    }
}
