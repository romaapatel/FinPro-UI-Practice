//
//  FinProOnBoardingViewController.swift
//  FinPro_UI_Practice
//
//  Created by Roma Patel on 05/05/22.
//

import UIKit

class FinProOnBoardingViewController: UIViewController, pageControlDelegate {
    func onPageChange(currentPage: Int, pageControl : UIPageControl) {
        pageControl.currentPage = currentPage
        self.onBoardingCollectionView.scrollToItem(at:IndexPath(item: currentPage, section: 0), at: .right, animated: false)
    }
    

    @IBOutlet weak var onBoardingCollectionView: UICollectionView!
    var currentPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onBoardingCollectionView.dataSource = self
        onBoardingCollectionView.delegate = self
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        self.onBoardingCollectionView.collectionViewLayout = layout
    }
   
}

extension FinProOnBoardingViewController : UICollectionViewDelegate {}

extension FinProOnBoardingViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return onBoardingValuesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "onBoardingCell", for: indexPath) as? OnBoardingCollectionViewCell else { return UICollectionViewCell() }
        let data = onBoardingValuesArray[indexPath.row]
        cell.getDetails(mainHeader: data.mainHeader, subHeader: data.subHeader, image: data.images, isVisible: data.btnGet, index: indexPath.row )
        cell.delegate = self
        return cell
    }
}

extension FinProOnBoardingViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}
