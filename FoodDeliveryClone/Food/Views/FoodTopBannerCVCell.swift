//
//  FoodTopBannerCVCell.swift
//  FoodDeliveryClone
//
//  Created by Rakesh Kumar on 01/12/24.
//

import UIKit

class FoodTopBannerCVCell: UICollectionViewCell {
    // MARK: - Properties
    
    var data: FoodTopBannerModel? {
        didSet {
            guard let data = data else {return}
            bannerImage.image = UIImage(named: data.bannerImage)
        }
    }
    
    let bannerImage: UIImageView = {
       let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.layer.cornerRadius = 5
        img.clipsToBounds = true
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    // MARK: - Main
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Function
    
    func setUpViews() {
        backgroundColor = .clear
        addSubview(bannerImage)
    }
    
    func setUpConstraints() {
        bannerImage.pin(to: self)
    }
}
