//
//  WeatherListViewController.swift
//  WeatherTestApp
//
//  Created by Sind Bad on 27.04.2020.
//  Copyright © 2020 Still Beat. All rights reserved.
//

import UIKit

class WeatherListViewController:
    
UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var addCityButton: UIButton!
    @IBOutlet weak var addCityName: UILabel!
    @IBAction func exitButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
    
    let data:  [WeatherListCellViewModel] = [
        
        WeatherListCellViewModel(cityName: "Ульяновск", temperatureValue: "15", timeValue: "21:00", cloud: true),
        
        WeatherListCellViewModel(cityName: "Москва", temperatureValue: "6", timeValue: "20:50", cloud: false),
        WeatherListCellViewModel(cityName: "Санкт-Петербург", temperatureValue: "20", timeValue: "20:50", cloud: true
        )
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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

