//
//  NSTextAttachment+Extension.swift
//  FoodDeliveryClone
//
//  Created by Rakesh Kumar on 02/12/24.
//

import UIKit

extension NSTextAttachment {
    func setImageHeight(height: CGFloat) {
        guard let image = image else {return}
        
        let ratio = image.size.width / image.size.height
        
        bounds = CGRect(x: bounds.origin.x, y: bounds.origin.y, width: ratio * height, height: height)
    }
}
