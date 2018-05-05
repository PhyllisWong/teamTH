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
        self.tableView.rowHeight = 300

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
        cell.cat = catsList[raw]
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}