//
//  BundleRegistry.swift
//  FlightSearch
//
//  Created by Caroline Nakaye on 9/10/19.
//  Copyright © 2019 American Airlines. All rights reserved.
//

import Foundation

final public class BundleRegistry {
    public static let `default` = BundleRegistry()
    public var bundles = [String: Bundle]()

    public func registerBundle(identifier: String, bundle: Bundle) {
        guard bundles[identifier] == nil else {
            return
        }

        bundles[identifier] = bundle
    }

    public func bundle(for identifier: String) -> Bundle? {
        guard let bundle = bundles[identifier]
            else {
                return nil
        }

        return bundle
    }
}
