//
//  EventsTableViewController.swift
//  Taller
//
//  Created by saul ulises urias guzmàn on 29/10/17.
//  Copyright © 2017 saul ulises urias guzmàn. All rights reserved.
//

import UIKit

class EventsTableViewController: UITableViewController {
    //MARK: - Varailabels And Constants
    let eventCellIdentifier = "eventCellIdentifier"
    let eventDescriptionSegue = "eventDescriptionSegue"
    var selectedIndex = 0
    
    //MARK: - View Life
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Events of the Month"
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.eventCellIdentifier, for: indexPath) as! EventTableViewCell
            cell.imageEvent.image = events[indexPath.row].image
            cell.labelName.text = events[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedIndex = indexPath.row
        self.performSegue(withIdentifier: self.eventDescriptionSegue, sender:
            self)
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let descriptionController = segue.destination as! EventDescriptionViewController
        descriptionController.selectedEventIndex = self.selectedIndex
    }
    
}
