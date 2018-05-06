//
//  TableViewController.swift
//  Meow-Fest
//
//  Created by Phyllis Wong on 5/5/18.
//  Copyright © 2018 Phyllis Wong. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var catsList = [Cat]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Meow Fest"
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.rowHeight = 350

        let networking = Networking()
        networking.fetch(resource: .cats) { (result) in
            DispatchQueue.main.async {
                guard let catsList = result as? [Cat] else { fatalError("Could not parse json") }
                self.catsList = [Cat]()
                self.catsList = catsList
                self.tableView.reloadData()
            }
        }
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return catsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "CatsTableViewCell", for: indexPath) as! CatsTableViewCell
        let raw = indexPath.item
        let lightGrey = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
        cell.contentView.backgroundColor = lightGrey
        cell.cat = catsList[raw]
        return cell
    }
}
