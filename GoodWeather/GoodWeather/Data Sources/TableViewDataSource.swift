//
//  TableViewDataSource.swift
//  GoodWeather
//
//  Created by SIMA on 02/05/2019.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit

class TableViewDataSource<CellType, ViewModel>: NSObject, UITableViewDataSource where CellType: UITableViewCell {
    
    
    let cellIdetifier: String
    var items: [ViewModel]
    let configureCell: (CellType, ViewModel) -> ()
    
    init(cellIdetifier: String, items: [ViewModel], configureCell: @escaping (CellType, ViewModel) -> () ) {
        self.cellIdetifier = cellIdetifier
        self.items = items
        self.configureCell = configureCell
    }
    
    func updateItems(_ items: [ViewModel]) {
        self.items = items
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellIdetifier, for: indexPath) as? CellType else{
            fatalError("Cell with idetifier \(self.cellIdetifier) not found")
        }
        let vm = self.items[indexPath.row]
        self.configureCell(cell,vm)
        return cell
    }
}
