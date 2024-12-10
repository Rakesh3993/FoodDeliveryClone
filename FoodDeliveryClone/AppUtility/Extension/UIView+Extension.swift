//
//  UIView+Extension.swift
//  FoodDeliveryClone
//
//  Created by Rakesh Kumar on 01/12/24.
//

import Foundation
import UIKit

extension UIView {
    func pin(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
    }
    
    func setGradient(withColors colors: [CGColor], startPoint: CGPoint, endPoint: CGPoint) {
        let gradient:CAGradientLayer = CAGradientLayer()
        
        gradient.colors = colors
        gradient.startPoint = startPoint
        gradient.endPoint = endPoint
        gradient.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
        self.layer.insertSublayer(gradient, at: 0)
    }
}
