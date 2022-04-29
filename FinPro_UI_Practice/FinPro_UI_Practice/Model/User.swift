//
//  User.swift
//  FinPro_UI_Practice
//
//  Created by Roma Patel on 30/05/22.
//

import Foundation

struct User: Codable {
    let email, password: String
}

struct Error: Codable {
    let error : String
}

struct Response: Codable {
    let id: Int?
    let token: String
}


protocol APIResponse {
    func onApiFailure(error: Error)
    func onApiSucess(response: Response)
    func onFailure(message: String)
}


