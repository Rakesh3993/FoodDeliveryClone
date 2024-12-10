//
//  FoodCategoryCVCell.swift
//  FoodDeliveryClone
//
//  Created by Rakesh Kumar on 02/12/24.
//

import UIKit

class FoodCategoryCVCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    var data: FoodCategoryDataModel? {
        didSet {
            guard let data = data else {return}
            categoryImage.image = UIImage(named: data.categoryImage)
            titleLabel.text = data.categoryName
        }
    }
    
    lazy var categoryImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.customFont(ofType: .light, withSize: 10)
        label.numberOfLines = 2
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews() {
        [categoryImage, titleLabel].forEach(addSubview)
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            categoryImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 3),
            categoryImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -3),
            categoryImage.topAnchor.constraint(equalTo: topAnchor, constant: 3),
            categoryImage.heightAnchor.constraint(equalToConstant: 45),
            
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 3),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -3),
            titleLabel.topAnchor.constraint(equalTo: categoryImage.bottomAnchor, constant: 3),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -3)
        ])
    }
}
