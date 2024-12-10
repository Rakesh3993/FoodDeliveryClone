//
//  SectionFooterView.swift
//  FoodDeliveryClone
//
//  Created by Rakesh Kumar on 02/12/24.
//

import UIKit

class SectionFooterView: UICollectionReusableView {
    let dividerView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .black
        return v
    }()
    
    // MARK: MAIN -
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: FUNCTIONS -
    
    func setUpViews(){
        addSubview(dividerView)
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            dividerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            dividerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            dividerView.heightAnchor.constraint(equalToConstant: 2),
            dividerView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
