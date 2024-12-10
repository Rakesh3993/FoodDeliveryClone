//
//  Layout+Enum.swift
//  FoodDeliveryClone
//
//  Created by Rakesh Kumar on 02/12/24.
//

import UIKit

enum LayoutType {
    case headerLayout
    case categoryLayout
    case restuarantListLayout
    case curatedRestuarantLayout
    case veganRestaurantLayout
    
    func getLayout(withHeader: Bool = true) -> NSCollectionLayoutSection {
        switch self {
        case .headerLayout:
            return AppLayouts.shared.headerLayout()
        case .categoryLayout:
            return AppLayouts.shared.categoryLayout()
        case .restuarantListLayout:
            return AppLayouts.shared.restuarantListLayout()
        case .curatedRestuarantLayout:
            return AppLayouts.shared.curatedRestuarantsLayout()
        case .veganRestaurantLayout:
            return AppLayouts.shared.veganRestuarantsLayout()
        }
    }
}

