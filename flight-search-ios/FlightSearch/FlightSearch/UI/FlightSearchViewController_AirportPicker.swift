//
//  FlightSearchViewController_DataPicker.swift
//  FlightSearch
//
//  Copyright © 2019 American Airlines. All rights reserved.
//

import UIKit

// MARK: - Airport picker
extension FlightSearchViewController: UIPickerViewDelegate, UIPickerViewDataSource {

    // MARK: UIPickerView Delegation

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView( _ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 0 {
            return Constants.Airports.origin.count
        } else {
            return Constants.Airports.destination.count
        }
    }

    func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0 {
            return Constants.Airports.origin[row]
        } else {
            return Constants.Airports.destination[row]
        }
    }

    func pickerView( _ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 0 {
            originTextField?.text = Constants.Airports.origin[row]
        } else {
            destinationTextField?.text = Constants.Airports.destination[row]
        }
    }

    func showAirportPickers() {
        // add tags to distinguish View pickers
        fromAirportPicker.tag = 0
        toAirportPicker.tag = 1

        // set delegate
        toAirportPicker.delegate = self
        fromAirportPicker.delegate = self

        // set inputView for textFields
        originTextField?.inputView = fromAirportPicker
        destinationTextField?.inputView = toAirportPicker
    }
}
