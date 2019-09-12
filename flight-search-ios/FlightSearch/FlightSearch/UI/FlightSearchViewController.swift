//
//  ViewController.swift
//  FlightSearch
//
//  Copyright © 2019 American Airlines. All rights reserved.
//

import UIKit

class FlightSearchViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet var originTextField: UITextField?
    @IBOutlet var destinationTextField: UITextField?
    @IBOutlet var dateTextField: UITextField?
    @IBOutlet var cardView: UIView?
    
    let datePicker = UIDatePicker()
    let toAirportPicker = UIPickerView()
    let fromAirportPicker = UIPickerView()

    struct Constants {
        enum Buttons {
            static let done = "Done"
            static let cancel = "Cancel"
        }

        enum Strings {
            static let dateFormat = "yyyy-MM-dd"
            static let host = "https://flight-engine-behack2019.herokuapp.com"
            static let seugueWay = "flightSearchTapped"
        }

        enum Shadow {
            static let offset = CGSize(width: 0.0, height: 2.0)
            static let opacity: CGFloat = 0.2
            static let radius: CGFloat = 2.0
            static let color: UIColor = .gray
        }

        enum Airports {
            static let origin = ["DFW", "JFK", "LAX", "ORD"]
            static let destination = ["DFW", "JFK", "LAX", "ORD"]
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        showDatePicker()
        showAirportPickers()
        addShadowToContainerCardView()
    }

    @IBAction func searchButtonTapped(_ sender: Any) {
    }

    // MARK: - fetch flight data
    func getFlights() -> [Flight]? {
        guard
            let from = originTextField?.text,
            let to = destinationTextField?.text,
            let date =  dateTextField?.text
            else {
                showSystemFailureAlert()
                return []
        }
        let url = String("\(Constants.Strings.host)/flights?date=\(date)&origin=\(from)&destination=\(to)")
        let flights = try? URLProtocol.init().makeGETRequest(urlString: url)

        if flights?.count == 0 {
            showSystemFailureAlert()
        }
        return flights

    }
    

    // MARK: - Segue way
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            let identifier = segue.identifier,
            identifier == Constants.Strings.seugueWay,
            let navController = segue.destination as? UINavigationController,
            let flightFlightVC = navController.children[0] as? FlightListTableViewController,
            isSearchEntryValid() == true,
            let flights = getFlights()
            else {
                return
        }
        flightFlightVC.flights = flights
    }

    // MARK: - Add shadow to container card view
   func addShadowToContainerCardView() {
        cardView?.addShadow(color: Constants.Shadow.color,
                            offset: Constants.Shadow.offset,
                            opacity: Constants.Shadow.opacity,
                            radius: Constants.Shadow.radius)
   }

}

