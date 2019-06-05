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
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=c83bbcf3b9d84479aa4ed42c24faad31")!
        
        WebService().getArticles(url: url) { _ in
            
        }
    }
}
