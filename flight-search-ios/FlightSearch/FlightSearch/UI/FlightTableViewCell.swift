//
//  FlightTableViewCell.swift
//  FlightSearch
//
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
            static let cornerRadius: CGFloat = 5.0
        }

        enum String {
            static let aircraft = "Aircraft type: Boeing "
            static let flightDuration = "Flight duration: "
            static let american = "AA "
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
        aircraftType?.text = Constants.String.aircraft + newFlight.aircraft.model
        origin?.text = newFlight.origin.code
        flightNumber?.text = Constants.String.american + newFlight.flightNumber
        flightDuration?.text = Constants.String.flightDuration + newFlight.duration.locale
    }

    func addShadowToCellCardView() {
        cardView?.layer.cornerRadius = Constants.Shadow.cornerRadius
        cardView?.addShadow(color: Constants.Shadow.color,
                             offset: Constants.Shadow.offset,
                             opacity: Constants.Shadow.opacity,
                             radius: Constants.Shadow.radius)
    }

}

