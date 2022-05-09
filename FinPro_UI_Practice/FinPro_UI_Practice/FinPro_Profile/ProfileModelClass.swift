//
//  ProfileModelClass.swift
//  FinPro_UI_Practice
//
//  Created by Roma Patel on 04/05/22.
//

import Foundation
import UIKit

struct UserProfileDetails {
    let title: String
    let icon : String
    let faceIdSwitch : Bool
}

struct HeaderDetails {
    let headerTitle : String
    let subDetails : [UserProfileDetails]
}

let profileValuesArrays = [
    HeaderDetails( headerTitle: "Personal Info", subDetails: [
        UserProfileDetails(title: "Your Profile", icon: "UserProfileIcon", faceIdSwitch: false),
        UserProfileDetails(title: "History Transaction", icon: "HistoryIcon", faceIdSwitch: false)]),
    
    HeaderDetails(headerTitle: "Security", subDetails: [
        UserProfileDetails(title: "Face Id", icon: "FaceIdIcon", faceIdSwitch: true),
        UserProfileDetails(title: "Change Password", icon: "ChangePasswordIcon", faceIdSwitch: false),
        UserProfileDetails(title: "Forgot Password", icon: "ForgotPasswordIcon", faceIdSwitch: false)]),
    
    HeaderDetails(headerTitle: "General", subDetails: [
        UserProfileDetails(title: "Notification", icon: "NotificationIcon", faceIdSwitch: false),
        UserProfileDetails(title: "Languages", icon: "LanguagesIcon", faceIdSwitch: false),
        UserProfileDetails(title: "Help and Support", icon: "HelpAndSupportIcon", faceIdSwitch: false)]),
]
