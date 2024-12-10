//
//  SectionHeaderView.swift
//  FoodDeliveryClone
//
//  Created by Rakesh Kumar on 02/12/24.
//

import UIKit

class SectionHeaderView: UICollectionReusableView {
        
    let dividerView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        return view
    }()
    
    let title: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Restuarants curated for"
        label.textColor = .black.withAlphaComponent(0.8)
        label.font = UIFont.customFont(ofType: .bold, withSize: 15)
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
        [dividerView, title].forEach(addSubview)
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            dividerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            dividerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            dividerView.heightAnchor.constraint(equalToConstant: 2),
            dividerView.topAnchor.constraint(equalTo: topAnchor),
            
            title.leadingAnchor.constraint(equalTo: leadingAnchor),
            title.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            title.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
