//
//  UIButton+Extension.swift
//  FoodDeliveryClone
//
//  Created by Rakesh Kumar on 02/12/24.
//

import UIKit

extension UIButton {
    func setButtonTitleWithRightImage(title: String, btnImage: String, customFont: UIFont, color: UIColor, imageColor: UIColor, imageSize: CGFloat, isImageOriginal: Bool = false) {
        
        let attributedText = NSMutableAttributedString(string: "\(title)", attributes: [NSAttributedString.Key.font: customFont, NSAttributedString.Key.foregroundColor: color])
        
        let font = customFont
        var img = UIImage()
        if isImageOriginal {
            img = UIImage(named:btnImage)!
        }else{
            img = (UIImage(named: btnImage)?.withRenderingMode(.alwaysTemplate).withTintColor(imageColor))!
        }
        
        let image = NSTextAttachment()
        image.image = img
        image.bounds = CGRect(x: 0, y: (font.capHeight - imageSize).rounded() / 2, width: imageSize, height: imageSize)
        image.setImageHeight(height: imageSize)
        
        let imageString = NSAttributedString(attachment: image)
        attributedText.append(imageString)
        self.setAttributedTitle(attributedText, for: .normal)
    }
}
