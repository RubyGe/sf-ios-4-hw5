//
//  ItemsTableViewController.swift
//  iOS4-HW5-Delegation
//
//  Created by Kathryn Rotondo on 1/20/16.
//  Copyright © 2016 Kathryn Rotondo. All rights reserved.
//

import UIKit

class ItemsTableViewController: UITableViewController, EventSaver {

    var items:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func saveData(event:String){
        items.append(event)
        tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("todoCellIdentifier", forIndexPath: indexPath)
    
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destinationViewController = segue.destinationViewController as! AddItemViewController
        destinationViewController.delegate = self
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
