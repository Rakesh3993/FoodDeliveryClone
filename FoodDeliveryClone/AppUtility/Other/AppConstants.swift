//
//  AppConstants.swift
//  FoodDeliveryClone
//
//  Created by Rakesh Kumar on 01/12/24.
//

import Foundation
import UIKit


let headerKind = "Header"
let footerKind = "Footer"
let sectionBackground = "SectionBackground"

struct Colors {
    static let appOrange = UIColor.hexStringToUIColor(hex: "#FF6600")
}


struct WindowConstant {
    private static let window = UIApplication.shared.windows.filter{$0.isKeyWindow}.first
    
    static var getTopPadding: CGFloat {
        return window?.safeAreaInsets.top ?? 0
    }
    
    static var getBottomPadding: CGFloat {
        return window?.safeAreaInsets.bottom ?? 0
    }
}

struct Key {
    struct ReusableIdentifiers {
        static let foodTopBannerId = "FoodTopBannerCVCell"
        static let foodCategoryId = "FoodCategoryCVCell"
        static let restuarantListId = "RestuarantListCVCell"
        static let foodFilterHeaderId = "FoodFilterHeaderView"
        static let sectionHeaderId = "SectionHeaderView"
        static let sectionHeader2Id = "SectionHeaderView2"
        static let curatedRestuarantId = "CuratedRestuarantCVCell"
        static let foodFilterFooterId = "SectionFooterView"
        static let veganRestaurantId = "VeganRestuarantCVCell"
    }
}
