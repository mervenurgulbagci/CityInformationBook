//
//  ViewController.swift
//  CityIntroBook
//
//  Created by Merve Nurgül BAĞCI on 16.02.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var cityArray = [City]()
    var userSelect : City?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        let istanbul = City(cityName: "İstanbul", area: "Marmara", image: UIImage(named: "istanbul")!)
        let antalya = City(cityName: "Antalya", area: "Akdeniz", image: UIImage(named: "antalya")!)
        let trabzon = City(cityName: "Trabzon", area: "Karadeniz", image: UIImage(named: "trabzon")!)
        
        cityArray =  [istanbul,antalya,trabzon]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cityArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        userSelect = cityArray[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedCity = userSelect
        
        }
}

}
