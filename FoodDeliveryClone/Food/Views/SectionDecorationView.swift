//
//  SectionDecorationView.swift
//  FoodDeliveryClone
//
//  Created by Rakesh Kumar on 02/12/24.
//

import UIKit

class SectionDecorationView: UICollectionReusableView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: FUNCTIONS -
    
    func setUpViews(){
        self.backgroundColor = UIColor(red: 244/255, green: 243/255, blue: 245/255, alpha: 1)
    }
}
