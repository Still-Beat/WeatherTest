//
//  WeatherListViewController.swift
//  WeatherTestApp
//
//  Created by Sind Bad on 27.04.2020.
//  Copyright © 2020 Still Beat. All rights reserved.
//

import UIKit

class WeatherListViewController:
    
UIViewController, UITableViewDataSource, UITableViewDelegate, AddCityViewControllerDelegate {
    
    func cityBeChanges(name: String) {
        cityName.text = ""
    }
    
    
    func alertMainView() {
        let alert = UIAlertController(title: "Ошибка", message: "Текста нет", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ОК", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var addCityButton: UIButton!
    @IBOutlet weak var addCityName: UILabel!
    @IBOutlet weak var cityName: UILabel!
    

    let data:  [WeatherListCellViewModel] = [
        
        WeatherListCellViewModel(cityName: "Ульяновск", temperatureValue: "15", timeValue: "21:00", cloud: true),
        
        WeatherListCellViewModel(cityName: "Москва", temperatureValue: "6", timeValue: "20:50", cloud: false),
        WeatherListCellViewModel(cityName: "Санкт-Петербург", temperatureValue: "20", timeValue: "20:50", cloud: true
        )
        
    ]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addCitySegue" {
            if let secondVC = segue.destination as? AddCityViewController {
                secondVC.delegate = self
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addCityButton.setTitle("Add City", for: .normal)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let nibFirst = UINib (nibName: "WeatherListViewCell", bundle: nil)
        tableView.register(nibFirst, forCellReuseIdentifier: "weatherCell")
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell")! as! WeatherListViewCell
        
        cell.viewModel = data[indexPath.row]
        return cell
    }
    
    
}

