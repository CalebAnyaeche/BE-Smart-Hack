//
//  FlightListTableViewController.swift
//  FlightSearch
//
//  Copyright © 2019 American Airlines. All rights reserved.
//

import UIKit

class FlightListTableViewController: UITableViewController {

    struct Constants {
        static let cellIdentifier = "FlightTableViewCell"
    }

    var flights: [Flight] = []
    static var title: String? = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = flights[0].origin.city + " to " + flights[0].destination.city
    }

    @IBAction func closeButtontapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return flights.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.cellIdentifier, for: indexPath)
                        as! FlightTableViewCell
        let flight = flights[indexPath.row]
        cell.configure(newFlight: flight)

        return cell
    }

}


