//
//  ViewController.swift
//  FlightSearch
//
//  Created by Caroline Nakaye on 9/8/19.
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
    let toAirports = ["DFW", "JFK", "LAX", "ORD", "AUS"]
    let fromAirports = ["DFW", "JFK", "LAX", "ORD"]

    struct Constants {
        enum Buttons {
            static let done = "Done"
            static let cancel = "Cancel"
        }

        enum Strings {
            static let dateFormat = "yyyy-MM-dd"
        }

        enum Shadow {
            static let offset = CGSize(width: 0.0, height: 2.0)
            static let opacity: CGFloat = 0.2
            static let radius: CGFloat = 2.0
            static let color: UIColor = .gray
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



   func addShadowToContainerCardView() {
        cardView?.addShadow(color: Constants.Shadow.color,
                            offset: Constants.Shadow.offset,
                            opacity: Constants.Shadow.opacity,
                            radius: Constants.Shadow.radius)
   }

}

extension UIView {

    static var textViewInsets: UIEdgeInsets {
        return UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
    }

    func addShadow(color: UIColor, offset: CGSize, opacity: CGFloat, radius: CGFloat) {
        layer.shadowColor = color.cgColor
        layer.shadowOffset = offset
        layer.shadowOpacity = Float(opacity)
        layer.shadowRadius = radius
    }

    func addShadow(color: UIColor, offset: CGSize, opacity: CGFloat, radius: CGFloat, maskToBounds: Bool) {
        addShadow(color: color, offset: offset, opacity: opacity, radius: radius)
        layer.masksToBounds = maskToBounds
    }
}

