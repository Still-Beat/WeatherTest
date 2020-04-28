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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var TemperatureLabel: UILabel!
    @IBOutlet weak var AddCityButton: UIButton!
    
    
    private var data: [String] = []
    
    
    
    


    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 tableView.dataSource = self
 tableView.delegate = self
            
            let nibFirst = UINib (nibName: "WeatherListViewCell", bundle: nil)
            tableView.register(nibFirst, forCellReuseIdentifier: "weatherCell")

    }


}

