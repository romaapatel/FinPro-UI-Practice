//
//  FinProLabel.swift
//  FinPro_UI_Practice
//
//  Created by Roma Patel on 29/04/22.
//

import Foundation
import UIKit

enum FontWeight : String {
    case regular = "Inter-Regular"
    case semibold =  "Inter-SemiBold"
    case medium = "Inter-Medium"
}

class FinProLabel : UILabel {
    
    func setup() {
        self.textColor = UIColor.neutral100
    }
    
    @IBInspectable public var textFont : String = ""{
        didSet {
            switch (textFont) {
            case "H7Regular":
                setSize(size: 10.0, weight: .regular)
            case "H6Regular":
                setSize(size: 12.0 ,weight: .regular)
            case "H5Regular":
                setSize(size: 14.0, weight: .regular)
            case "H4Regular":
                setSize(size: 16.0, weight: .regular)
            case "H3Regular":
                setSize(size: 18.0, weight: .regular)
            case "H7Medium":
                setSize(size: 10.0, weight: .medium)
            case "H6Medium":
                setSize(size: 12.0 ,weight: .medium)
            case "H5Medium":
                setSize(size: 14.0, weight: .medium)
            case"H4Medium":
                setSize(size: 16.0, weight: .medium)
            case "H3Medium":
                setSize(size: 18.0, weight: .medium)
            case "H7SemiBold":
                setSize(size: 10.0, weight: .semibold)
            case "H6SemiBold":
                setSize(size: 12.0 ,weight: .semibold)
            case "H5SemiBold":
                setSize(size: 14.0, weight: .semibold)
            case "H4SemiBold":
                setSize(size: 16.0, weight: .semibold)
            case "H3SemiBold":
                setSize(size: 18.0, weight: .semibold)
            case "H2SemiBold":
                setSize(size: 24.0, weight: .semibold)
            case "H2Medium":
                setSize(size: 24.0, weight: .medium)
            case "H2Regular":
                setSize(size: 24.0, weight: .regular)
            default:
                break
            }
        }
    }

    func setSize(size: CGFloat,weight : UIFont.Weight) {
        self.font = UIFont.systemFont(ofSize: size, weight: weight)
    }
}
