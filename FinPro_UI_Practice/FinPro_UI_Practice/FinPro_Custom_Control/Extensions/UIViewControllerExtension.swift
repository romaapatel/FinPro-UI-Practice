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
    
    func makeAlert(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func sendPostRequest<T: Codable>(requestType: RequestType, apiType: ApiType, body: T, apiResponse: APIResponse) {
        
        if let url = URL(string: Constants.WebService.baseURl + apiType.rawValue) {
            var request = URLRequest(url: url)
            request.httpMethod = requestType.rawValue
            request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
            if let data = try? JSONEncoder().encode(body.self) {
                request.httpBody = data
            }
            URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    apiResponse.onFailure(message: error.localizedDescription)
                } else {
                    if let responseCode = response as? HTTPURLResponse {
                        if(responseCode.statusCode == 200) {
                            if let responseData = data {
                                if let finalResponse = try? JSONDecoder().decode(Response.self, from: responseData) {
                                    DispatchQueue.main.async {
                                        apiResponse.onApiSucess(response: finalResponse)
                                    }
                                }
                            }
                        } else {
                            if let responseData = data {
                                if let errorResponse = try? JSONDecoder().decode(Error.self, from: responseData) {
                                    DispatchQueue.main.async {
                                        apiResponse.onApiFailure(error: errorResponse)
                                    }
                                }
                            }
                        }
                    }
                }
            }.resume()
        }
    }
}

enum RequestType: String {
    case get = "GET"
    case post = "POST"
}

enum ApiType: String {
    case signIn = "api/login"
    case signUp = "api/register"
}
