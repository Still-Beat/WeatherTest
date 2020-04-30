//
//  AddCityViewController.swift
//  WeatherTestApp
//
//  Created by Sind Bad on 30.04.2020.
//  Copyright © 2020 Still Beat. All rights reserved.
//

import UIKit

class AddCityViewController: UIViewController {
    @IBOutlet weak var changeCityLabel: UILabel!
    @IBOutlet weak var cityNameField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    @IBAction func exitButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        changeCityLabel.text = "Choose City"
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
