//
//  BackTableVC.swift
//  App2
//
//  Created by 206STUDENT on 3/1/16.
//  Copyright © 2016 206STUDENT. All rights reserved.
//

import Foundation

class BackTableVC: UITableViewController {
    
    
    var TableArray = [String]()
    
    override func viewDidLoad() {
        TableArray = ["Home","Morning Announcements","District Calendar", "High School Calendar", "Cafeteria Menu", "Lunch Spots", "Parent Portal", "Naviance", "HS Day Schedules", "Useful Links", "About" , "Status"]
    }
    
    override func tableView(_ _tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableArray.count
        
        
        
    }
    
    override func tableView(_ _tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = TableArray[(indexPath as NSIndexPath).row]
        
        return cell
        
      /*  if(indexPath.row % 2 == 0){
            cell.backgroundColor = UIColor(red: 1, green: 0.8, blue: 0, alpha: 1.0)
        } else{
            cell.backgroundColor = UIColor.blackColor()
        }
        */
    }
    
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        cell.backgroundColor = UIColor.black
        cell.textLabel?.textColor = UIColor(red: 1, green: 0.898, blue: 0.502, alpha: 1.0)
        tableView.backgroundColor = UIColor.black
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        let DestVC = segue.destination as! ViewController
        let indexPath : IndexPath = self.tableView.indexPathForSelectedRow!
    

        DestVC.varView = (indexPath as NSIndexPath).row
    }
    
}
