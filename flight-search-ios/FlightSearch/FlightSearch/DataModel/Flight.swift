//
//  Flight.swift
//  FlightSearch
//
//  Created by Caroline Nakaye on 9/8/19.
//  Copyright © 2019 American Airlines. All rights reserved.
//

import Foundation

struct Flight: Decodable {

    let flightNumber: String
    let origin: Airport
    let destination: Airport
    let distance: Int
    let duration: Duration
}

struct Airport: Decodable {
    let code: String
    let city: String
    let location: Location
}

struct Location: Decodable { 
    let latitude: String
    let longitude: String
}

struct Duration: Decodable {
    let locale: String
    let hours: Int
    let minutes: Int
}
