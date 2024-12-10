//
//  FoodCategoryDataModel.swift
//  FoodDeliveryClone
//
//  Created by Rakesh Kumar on 02/12/24.
//

import Foundation

struct FoodCategoryDataModel {
    let categoryName: String
    let categoryImage: String
}

let foodCategoryMockData = [
    FoodCategoryDataModel(categoryName: "Offers Near You", categoryImage: "ic_offer"),
    FoodCategoryDataModel(categoryName: "Veg Only", categoryImage: "ic_vegonly"),
    FoodCategoryDataModel(categoryName: "Premium", categoryImage: "ic_premium"),
    FoodCategoryDataModel(categoryName: "Top Rated", categoryImage: "ic_toprated"),
    FoodCategoryDataModel(categoryName: "Express Delivery", categoryImage: "ic_express"),
    FoodCategoryDataModel(categoryName: "Pocket Friendly", categoryImage: "ic_pocket"),
    FoodCategoryDataModel(categoryName: "Best Sellers", categoryImage: "ic_bestseller"),
    FoodCategoryDataModel(categoryName: "Newly Launch", categoryImage: "ic_newlaunch")
]
