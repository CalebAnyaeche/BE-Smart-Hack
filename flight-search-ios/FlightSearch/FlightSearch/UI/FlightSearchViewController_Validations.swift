//
//  FlightSearchViewController_Validations.swift
//  FlightSearch
//
//  Created by Caroline Nakaye on 9/12/19.
//  Copyright © 2019 American Airlines. All rights reserved.
//

import UIKit

// MARK: - Flight search validations
extension FlightSearchViewController {

    func isSearchEntryValid() -> Bool {
        guard
            let from = originTextField?.text,
            let to = destinationTextField?.text,
            let date =  dateTextField?.text,
            to.isEmpty == false,
            from.isEmpty == false,
            date.isEmpty == false
            else {
                let alert = createAlert(message: "All fields must be entered")
                self.present(alert, animated: true, completion: nil)
               return false
        }

        if from == to {
            let alert = createAlert(message: "origin and destinations airport must be different")
            self.present(alert, animated: true, completion: nil)
            return false
        }

        if Constants.Airports.origin.contains(from) == false {
            let alert = createAlert(message: "Selected departure airport is not supported at this time")
            self.present(alert, animated: true, completion: nil)
            return false
        }

        if Constants.Airports.destination.contains(to) == false {
            let alert = createAlert(message: "Selected destination airport is not supported at this time")
            self.present(alert, animated: true, completion: nil)
            return false
        }
        return true
    }

    func createAlert(message: String) -> UIAlertController {
        let alert = UIAlertController(title: "Invalid Entry", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

        return alert

    }

}
