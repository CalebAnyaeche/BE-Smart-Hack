//
//  MockJSONResponse.swift
//  FlightSearch
//
//  Created by Caroline Nakaye on 9/8/19.
//  Copyright © 2019 American Airlines. All rights reserved.
//

import Foundation

public class MockJSONResponse {
    public static func objectFromFile(_ fileName: String, ext: String, bundle: Bundle) -> Any? {
        guard let path = bundle.url(forResource: fileName, withExtension: ext),
            let data = try? Data(contentsOf: path) else {
                return nil
        }

        return try? JSONSerialization.jsonObject(with: data, options: .allowFragments)
    }
}
