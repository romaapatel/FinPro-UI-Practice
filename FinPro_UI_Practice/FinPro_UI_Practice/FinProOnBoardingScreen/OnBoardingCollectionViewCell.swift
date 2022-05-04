//
//  OnBoardingCollectionViewCell.swift
//  FinPro_UI_Practice
//
//  Created by Roma Patel on 05/05/22.
//

import UIKit

class OnBoardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var btnGetStarted: FinProButton!
    @IBOutlet weak var lblSubHeader: FinProH5RegularLabel!
    @IBOutlet weak var lblMainHeader: FinProLabel!
    @IBOutlet weak var imgOnBoarding: UIImageView!
    @IBOutlet weak var onBoardingView: UIView!
    var delegate: pageControlDelegate? = nil
    
    override func awakeFromNib() {
        onBoardingView.layer.cornerRadius = 32
        onBoardingView.layer.backgroundColor = UIColor.white.cgColor
        pageControl.currentPageIndicatorTintColor = UIColor.red
    }
    
    func getDetails(mainHeader: String, subHeader: String, image: String, isVisible : Bool, index: Int) {
        lblMainHeader.text = mainHeader
        lblSubHeader.text = subHeader
        imgOnBoarding.image = UIImage(named: image)
        self.btnGetStarted.isHidden = !isVisible
        pageControl.currentPage = index
    }
    
    @IBAction func onClickofPage(_ sender: UIPageControl) {
        pageControl.currentPage = sender.currentPage
        delegate?.onPageChange(currentPage: sender.currentPage,pageControl: pageControl)
    }
}

protocol pageControlDelegate {
    func  onPageChange(currentPage: Int, pageControl : UIPageControl)
}
