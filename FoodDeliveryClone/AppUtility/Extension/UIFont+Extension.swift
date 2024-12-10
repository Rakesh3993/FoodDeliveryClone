//
//  UIFont+Extension.swift
//  FoodDeliveryClone
//
//  Created by Rakesh Kumar on 02/12/24.
//
import UIKit

extension UIFont {
    enum FontType: String {
        case bold = "ProximaNova-Bold"
        case regular = "ProximaNovaA-Regular"
        case light = "ProximaNovaA-Light"
        case condBold = "ProximaNovaCond-Bold"
    }
    
    class func customFont(ofType type: FontType, withSize size: CGFloat, enableAspectRatio isRatio: Bool = true) -> UIFont {
        return UIFont(name: type.rawValue, size: isRatio ? size * ScreenSize.fontAspectRatio : size) ?? UIFont.systemFont(ofSize: size)
    }
}
