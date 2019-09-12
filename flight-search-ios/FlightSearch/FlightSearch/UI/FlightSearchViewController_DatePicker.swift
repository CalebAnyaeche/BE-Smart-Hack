//
//  FlightSearchViewController_DatePicker.swift
//  FlightSearch
//
//  Copyright © 2019 American Airlines. All rights reserved.
//

import UIKit

// MARK: - Date picker
extension FlightSearchViewController {

    func showDatePicker() {
       //Formate Date
        datePicker.datePickerMode = .date
        datePicker.minimumDate = Date()
        //ToolBar
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: Constants.Buttons.done, style: .plain, target: self, action: #selector(datePickerDoneButtonTapped));
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: Constants.Buttons.cancel, style: .plain, target: self, action: #selector(datePickerCancelButtonTapped));

        toolbar.setItems([doneButton, spaceButton, cancelButton], animated: false)

        dateTextField?.inputAccessoryView = toolbar
        dateTextField?.inputView = datePicker
    }

    @objc func datePickerDoneButtonTapped() {
        // format Date
        let formatter = DateFormatter()
        formatter.dateFormat = Constants.Strings.dateFormat
        dateTextField?.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }

    @objc func datePickerCancelButtonTapped() {
        self.view.endEditing(true)
     }
}
