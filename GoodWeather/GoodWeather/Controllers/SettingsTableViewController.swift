//
//  SettingsTableViewController.swift
//  GoodWeather
//
//  Created by Taejune Jung on 16/04/2019.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit

class SettingsTableViewController: UITableViewController {
    private var settingsViewModel = SettingsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
