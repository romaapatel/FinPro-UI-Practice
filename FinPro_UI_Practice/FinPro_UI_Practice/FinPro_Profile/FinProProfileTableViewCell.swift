//
//  FinProProfileTableViewCell.swift
//  FinPro_UI_Practice
//
//  Created by Roma Patel on 04/05/22.
//

import UIKit

class FinProProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var lblProfileDetails: FinProH4MediumLabel!
    @IBOutlet weak var imgProfileIcon: UIImageView!
    @IBOutlet weak var faceIdSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        faceIdSwitch.layer.cornerRadius = 12
        faceIdSwitch.layer.backgroundColor = UIColor(red: 0.949, green: 0.949, blue: 0.961, alpha: 1).cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureCellValue(profileImg: String, infoText: String, isVisibile: Bool){
        imgProfileIcon.image = UIImage(named: profileImg)
        self.lblProfileDetails.text = infoText
        self.faceIdSwitch.isHidden = !isVisibile
    }
}
