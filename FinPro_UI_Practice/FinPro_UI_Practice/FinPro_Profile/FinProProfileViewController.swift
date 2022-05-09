//
//  FinProProfileViewController.swift
//  FinPro_UI_Practice
//
//  Created by Roma Patel on 04/05/22.
//

import UIKit

class FinProProfileViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileTableView.dataSource = self
        profileImage.makeRounded()
    }
}

extension FinProProfileViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return profileValuesArrays[section].headerTitle
    }
    
    func tableView( _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return profileValuesArrays[section].subDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = profileTableView.dequeueReusableCell(withIdentifier: "userInformationCell", for: indexPath) as? FinProProfileTableViewCell else {
            return UITableViewCell()
        }
        if indexPath.section == 0 {
            cell.separatorInset = UIEdgeInsets(top: 0, left: cell.bounds.size.width, bottom: 0, right: 0)
        }
        let data = profileValuesArrays[indexPath.section].subDetails[indexPath.row]
        cell.configureCellValue(profileImg: data.icon, infoText: data.title, isVisibile: data.faceIdSwitch)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    private func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return profileValuesArrays.count
    }
}

