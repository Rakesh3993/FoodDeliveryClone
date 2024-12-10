//
//  FoodViewController.swift
//  FoodDeliveryClone
//
//  Created by Rakesh Kumar on 01/12/24.
//

import UIKit

class FoodViewController: UIViewController {
    
    let navView: UIView = {
       let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .white
        return v
    }()
    
    lazy var collectionView: UICollectionView = {
        let cv = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        cv.backgroundColor = .white
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.showsVerticalScrollIndicator = false
        cv.register(FoodTopBannerCVCell.self, forCellWithReuseIdentifier: Key.ReusableIdentifiers.foodTopBannerId)
        cv.register(FoodCategoryCVCell.self, forCellWithReuseIdentifier: Key.ReusableIdentifiers.foodCategoryId)
        cv.register(FoodFilterHeaderView.self, forSupplementaryViewOfKind: headerKind, withReuseIdentifier: Key.ReusableIdentifiers.foodFilterHeaderId)
        cv.register(RestuarantListCVCell.self, forCellWithReuseIdentifier: Key.ReusableIdentifiers.restuarantListId)
        cv.register(SectionHeaderView.self, forSupplementaryViewOfKind: headerKind, withReuseIdentifier: Key.ReusableIdentifiers.sectionHeaderId)
        cv.register(SectionFooterView.self, forSupplementaryViewOfKind: footerKind, withReuseIdentifier: Key.ReusableIdentifiers.foodFilterFooterId)
        cv.register(CuratedRestuarantCVCell.self, forCellWithReuseIdentifier: Key.ReusableIdentifiers.curatedRestuarantId)
        cv.register(VeganRestuarantCVCell.self, forCellWithReuseIdentifier: Key.ReusableIdentifiers.veganRestaurantId)
        cv.register(HeaderSectionView2.self, forSupplementaryViewOfKind: headerKind, withReuseIdentifier: Key.ReusableIdentifiers.sectionHeader2Id)
        cv.delegate = self
        cv.dataSource = self
        return cv
    }()
    
    lazy var filterHeaderView: FoodFilterHeaderView = {
        let view = FoodFilterHeaderView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isHidden = true
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavigations()
        setUpViews()
        setUpConstraints()
        configureCompositionalLayout()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavigations()
    }
    
    func setupNavigations() {
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.isHidden = false
        
        if #available(iOS 15.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.backgroundImage = UIImage()
            appearance.backgroundColor = .white
            appearance.configureWithTransparentBackground()
            navigationController?.navigationBar.standardAppearance = appearance
            navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance
        }
        
        let homeBtn = UIButton()
        homeBtn.setButtonTitleWithRightImage(title: "Home", btnImage: "ic_arrow_down", customFont: UIFont.customFont(ofType: .bold, withSize: 16), color: .black, imageColor: .black, imageSize: 20)
        let leftBarButtonItem = UIBarButtonItem(customView: homeBtn)
        
        navigationItem.leftBarButtonItem = leftBarButtonItem
    }
    
    func setUpViews() {
        view.addSubview(collectionView)
        view.addSubview(navView)
        view.addSubview(filterHeaderView)
    }
    
    func setUpConstraints() {
        collectionView.pin(to: view)
        
        NSLayoutConstraint.activate([
            navView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            navView.topAnchor.constraint(equalTo: view.topAnchor, constant: -(WindowConstant.getTopPadding + 64)),
            navView.heightAnchor.constraint(equalToConstant: WindowConstant.getTopPadding + 64),
            
            filterHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            filterHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            filterHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            filterHeaderView.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
}
