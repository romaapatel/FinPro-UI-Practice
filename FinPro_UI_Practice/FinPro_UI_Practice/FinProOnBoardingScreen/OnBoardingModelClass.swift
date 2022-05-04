//
//  OnBoardingModelClass.swift
//  FinPro_UI_Practice
//
//  Created by Roma Patel on 05/05/22.
//

import Foundation

struct OnBoardingDetails {
    let mainHeader: String
    let subHeader : String
    let images : String
    let btnGet : Bool
}

let onBoardingValuesArray = [OnBoardingDetails(mainHeader: "The best app for manage your finance", subHeader: "Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem semper parturient.", images: "OnBoardingImageFirst", btnGet: false),
    OnBoardingDetails(mainHeader: "Simple and easy to control your money", subHeader: "Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem semper parturient.", images: "OnBoardingImageSecond",btnGet: false),
    OnBoardingDetails(mainHeader: "Your savings are safe by smat invest", subHeader: "Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem semper parturient. ", images: "OnBoardingImageThird",btnGet: true)]

