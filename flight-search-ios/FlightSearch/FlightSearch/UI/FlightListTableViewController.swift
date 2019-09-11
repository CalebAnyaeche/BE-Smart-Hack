//
//  FlightListTableViewController.swift
//  FlightSearch
//
//  Created by Caroline Nakaye on 9/11/19.
//  Copyright © 2019 American Airlines. All rights reserved.
//

import UIKit

class FlightTableViewCell: UITableViewCell {

    struct Constants {

        enum Shadow {
            static let offset = CGSize(width: 0.0, height: 2.0)
            static let opacity: CGFloat = 0.2
            static let radius: CGFloat = 2.0
            static let color: UIColor = .gray
        }
    }

    @IBOutlet var origin: UILabel?
    @IBOutlet var destination: UILabel?
    @IBOutlet var aircraftType: UILabel?
    @IBOutlet var flightNumber: UILabel?
    @IBOutlet var flightDuration: UILabel?
    @IBOutlet var cardView: UIView?

    override func awakeFromNib() {
        super.awakeFromNib()
        addShadowToCellCardView()
    }

    func configure(newFlight: Flight) {
        destination?.text = newFlight.destination.code
        aircraftType?.text = "Aircraft type: Boeing " + "777"
        origin?.text = newFlight.origin.code
        flightNumber?.text = "AA " + newFlight.flightNumber
        flightDuration?.text = "Flight duration: " + newFlight.duration.locale
    }

    func addShadowToCellCardView() {
        cardView?.layer.cornerRadius = 5.0
        cardView?.addShadow(color: Constants.Shadow.color,
                             offset: Constants.Shadow.offset,
                             opacity: Constants.Shadow.opacity,
                             radius: Constants.Shadow.radius)
    }

}


class FlightListTableViewController: UITableViewController {

    var flights: [Flight] = []

    func createFlights() -> [Flight] {
        let location = Location(latitude: "", longitude: "")
        let destination: Airport = Airport(code: "DFW", city: "dallas", location: location)
        let origin: Airport = Airport(code: "LAX", city: "dallas", location: location)
        let duration = Duration(locale: "3h 12m", hours: 2, minutes: 12)

        let flight1 = Flight.init(flightNumber: "123", origin: origin, destination: destination, distance: 24, duration: duration)

        let flight2 = Flight.init(flightNumber: "25", origin: origin, destination: destination, distance: 24, duration: duration)

        let flight3 = Flight.init(flightNumber: "678", origin: origin, destination: destination, distance: 24, duration: duration)

        let flight4 = Flight.init(flightNumber: "222", origin: origin, destination: destination, distance: 24, duration: duration)
        return [flight1, flight2, flight3, flight4]
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        flights = createFlights()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return flights.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FlightTableViewCell", for: indexPath)
                        as! FlightTableViewCell
        let flight = flights[indexPath.row]
        cell.configure(newFlight: flight)

        return cell
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}


