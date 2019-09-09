//
//  FlightSearchViewController_DataPicker.swift
//  FlightSearch
//
//  Created by Caroline Nakaye on 9/8/19.
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
            return fromAirports.count
        } else {
            return toAirports.count
        }
    }

    func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0 {
            return fromAirports[row]
        } else {
            return toAirports[row]
        }
    }

    func pickerView( _ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 0 {
            originTextField?.text = fromAirports[row]
        } else {
            destinationTextField?.text = toAirports[row]
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
