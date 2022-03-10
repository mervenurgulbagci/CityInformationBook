//
//  DetailsViewController.swift
//  CityIntroBook
//
//  Created by Merve Nurgül BAĞCI on 16.02.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var cityAreaLabel: UILabel!
    
    var selectedCity : City?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityNameLabel.text = selectedCity?.name
        cityAreaLabel.text = selectedCity?.area
        imageView.image = selectedCity?.image
        

       
    }
    


}
