//
//  City.swift
//  CityIntroBook
//
//  Created by Merve Nurgül BAĞCI on 17.02.2022.
//

import Foundation
import UIKit
class City {
    var name : String
    var area : String
    var image: UIImage
    
    init(cityName: String, area: String, image: UIImage)
    {
        self.name = cityName
        self.area = area
        self.image = image
    }
}


