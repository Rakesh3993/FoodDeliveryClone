//
//  ViewController.swift
//  FoodDeliveryClone
//
//  Created by Rakesh Kumar on 01/12/24.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    var foodViewController: UIViewController!
    var searchViewController: UIViewController!
    var tabItem = UITabBarItem()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabController()
    }
    
    func setUpTabController() {
        let vc1 = FoodViewController()
        foodViewController = UINavigationController(rootViewController: vc1)
        
        let vc2 = SearchViewController()
        searchViewController = UINavigationController(rootViewController: vc2)
        
        viewControllers = [foodViewController, searchViewController]
        
        self.tabBar.backgroundImage = UIImage()
        UITabBar.appearance().backgroundColor = .white
        
        customTab(selectedImage: "ic_food_tab_selected", deselectedImage: "ic_food_tab", indexOfTab: 0, tabTitle: "food")
        customTab(selectedImage: "ic_search_tab_selected", deselectedImage: "ic_search_tab", indexOfTab: 1, tabTitle: "search")
    }
    
    func customTab(selectedImage image1: String, deselectedImage image2: String, indexOfTab index: Int, tabTitle title: String) {
        let selectedImage = UIImage(named: image1)?.withRenderingMode(.alwaysOriginal)
        let deselectedImage = UIImage(named: image2)?.withRenderingMode(.alwaysOriginal)
        
        tabItem = self.tabBar.items![index]
        tabItem.image = deselectedImage
        tabItem.selectedImage = selectedImage
        tabItem.title = .none
        tabItem.imageInsets.bottom = -11
    }
}

