//
//  ScreenSize.swift
//  FoodDeliveryClone
//
//  Created by Rakesh Kumar on 02/12/24.
//

import UIKit

struct ScreenSize {
    static var fontAspectRatio:CGFloat {
        if UIDevice().userInterfaceIdiom == .pad {
            return UIScreen.main.bounds.size.height / 667
        }
        
        let size = UIScreen.main.bounds.size
        
        if size.width < size.height { // portrait
            return UIScreen.main.bounds.size.width / 375
        } else {// landscape
            return UIScreen.main.bounds.size.height / 375
        }
    }
}
