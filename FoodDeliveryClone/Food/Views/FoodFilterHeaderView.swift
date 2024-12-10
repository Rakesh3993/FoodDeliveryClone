//
//  FoodFilterHeaderView.swift
//  FoodDeliveryClone
//
//  Created by Rakesh Kumar on 02/12/24.
//

import UIKit

class FoodFilterHeaderView: UICollectionReusableView {
    
    // MARK:  Properties -
    
    var leadingConstraints: NSLayoutConstraint?
    var trailingConstraints: NSLayoutConstraint?
    
    var isStickHeader: Bool? {
        didSet {
            guard let isStickHeader = isStickHeader else {return}
            if isStickHeader {
                dividerView.isHidden = false
                trailingConstraints?.constant = -17
                leadingConstraints?.constant = 17
            } else {
                dividerView.isHidden = true
                trailingConstraints?.constant = -2
                leadingConstraints?.constant = 2
            }
        }
    }
    
    let title: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "All Restuarants".uppercased()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.customFont(ofType: .regular, withSize: 12)
        return label
    }()
    
    let settingIcon: UIImageView = {
       let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "ic_setting")?.withRenderingMode(.alwaysTemplate)
        img.tintColor = .darkGray
        return img
    }()
    
    let filterButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sort/Filter", for: .normal)
        button.setTitleColor(.black.withAlphaComponent(0.8), for: .normal)
        button.titleLabel?.font = UIFont.customFont(ofType: .regular, withSize: 13)
        return button
    }()
    
    let dividerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray.withAlphaComponent(0.4)
        view.isHidden = true
        return view
    }()
    
    // MARK: Main -
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Function -
    
    func setUpViews() {
        backgroundColor = .white
        [title, settingIcon, filterButton, dividerView].forEach(addSubview)
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            title.centerYAnchor.constraint(equalTo: centerYAnchor),
            title.trailingAnchor.constraint(equalTo: filterButton.leadingAnchor, constant: -10),
            
            filterButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            dividerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            dividerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            dividerView.heightAnchor.constraint(equalToConstant: 0.7),
            dividerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            settingIcon.widthAnchor.constraint(equalToConstant: 25),
            settingIcon.heightAnchor.constraint(equalToConstant: 25),
            settingIcon.trailingAnchor.constraint(equalTo: filterButton.leadingAnchor, constant: -3),
            settingIcon.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        leadingConstraints = title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 2)
        leadingConstraints?.isActive = true
        
        trailingConstraints = filterButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -2)
        trailingConstraints?.isActive = true
    }
    
}
