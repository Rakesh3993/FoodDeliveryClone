//
//  FoodViewController+Extension.swift
//  FoodDeliveryClone
//
//  Created by Rakesh Kumar on 01/12/24.
//

import Foundation
import UIKit

extension FoodViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return foodTopBannerMockData.count
        case 1:
            return foodCategoryMockData.count
        case 3:
            return curatedRestuarantMackData.count
        case 5:
            return veganRestuarantMockData.count
        default:
            return restaurantListMockData.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Key.ReusableIdentifiers.foodTopBannerId, for: indexPath) as! FoodTopBannerCVCell
            cell.data = foodTopBannerMockData[indexPath.row]
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Key.ReusableIdentifiers.foodCategoryId, for: indexPath) as! FoodCategoryCVCell
            cell.data = foodCategoryMockData[indexPath.row]
            return cell
        case 3:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Key.ReusableIdentifiers.curatedRestuarantId, for: indexPath) as! CuratedRestuarantCVCell
            cell.data = curatedRestuarantMackData[indexPath.row]
            return cell
        case 5:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Key.ReusableIdentifiers.veganRestaurantId, for: indexPath) as! VeganRestuarantCVCell
            cell.data = veganRestuarantMockData[indexPath.row]
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Key.ReusableIdentifiers.restuarantListId, for: indexPath) as! RestuarantListCVCell
            cell.data = restaurantListMockData[indexPath.row]
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard kind == headerKind else {
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: Key.ReusableIdentifiers.foodFilterFooterId, for: indexPath) as! SectionFooterView
            return footer
        }
        
        switch indexPath.section {
        case 2:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: Key.ReusableIdentifiers.foodFilterHeaderId, for: indexPath) as! FoodFilterHeaderView
            return header
        case 5:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: Key.ReusableIdentifiers.sectionHeader2Id, for: indexPath) as! HeaderSectionView2
            return header
        default:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: Key.ReusableIdentifiers.sectionHeaderId, for: indexPath) as! SectionHeaderView
            return header
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let yOffset = scrollView.contentOffset.y
        filterHeaderView.isHidden = abs(yOffset) <= 350.0
        filterHeaderView.isStickHeader = !filterHeaderView.isHidden
    }
}

extension FoodViewController {
    func configureCompositionalLayout() {
        let layout = UICollectionViewCompositionalLayout { (sectionNumber, env) in
            switch sectionNumber {
            case 0:
                return LayoutType.headerLayout.getLayout()
            case 1:
                return LayoutType.categoryLayout.getLayout()
            case 2:
                return LayoutType.restuarantListLayout.getLayout()
            case 3:
                return LayoutType.curatedRestuarantLayout.getLayout()
            case 5:
                return LayoutType.veganRestaurantLayout.getLayout()
            default:
                return LayoutType.restuarantListLayout.getLayout(withHeader: false)
            }
        }
        layout.register(SectionDecorationView.self, forDecorationViewOfKind: sectionBackground)
        collectionView.setCollectionViewLayout(layout, animated: true)
    }
}

