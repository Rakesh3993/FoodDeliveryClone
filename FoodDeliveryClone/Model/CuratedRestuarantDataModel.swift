//
//  CuratedRestuarantDataModel.swift
//  FoodDeliveryClone
//
//  Created by Rakesh Kumar on 02/12/24.
//

import Foundation

struct CuratedRestuarantDataModel {
    let image: String
    let title: String
    let options: Int
}

let curatedRestuarantMackData = [
    CuratedRestuarantDataModel(image: "curated_img1", title: "biryani", options: 2),
    CuratedRestuarantDataModel(image: "curated_img2", title: "burger", options: 4),
    CuratedRestuarantDataModel(image: "curated_img3", title: "cakes & deserts", options: 12),
    CuratedRestuarantDataModel(image: "curated_img4", title: "north india", options: 38),
    CuratedRestuarantDataModel(image: "curated_img5", title: "south india", options: 10),
    CuratedRestuarantDataModel(image: "curated_img6", title: "sandwich", options: 18),
    CuratedRestuarantDataModel(image: "curated_img7", title: "indian snacks", options: 20)
]
