//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by SIMA on 05/06/2019.
//  Copyright © 2019 TJ. All rights reserved.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    private func setup(){
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
