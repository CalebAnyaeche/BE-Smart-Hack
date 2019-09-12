//
//  FlightSearchConfiguration.swift
//  FlightSearch
//
//  Copyright © 2019 American Airlines. All rights reserved.
//

import Foundation

@objc
public class FlightSearchConfiguration: NSObject {
    internal static let bundleName = "FlightSearch"

    @objc
    public static var bundle: Bundle {
        var bundle = Bundle(for: FlightSearchConfiguration.self)

        if let nestedBundle = Bundle(path: "\(Bundle.main.bundlePath)/\(bundleName).bundle") {
            bundle = nestedBundle
        }

        // Look in the Resources folder on macOS
        if let resourcePath = Bundle.main.resourcePath,
            let nestedBundle = Bundle(path: "\(resourcePath)/\(bundleName).bundle") {
            bundle = nestedBundle
        }

        // Look up two levels if not already found and this is an app extension
        if Bundle.main.bundleURL.pathExtension == "appex" {
            // Peel off two directory levels - MY_APP.app/PlugIns/MY_APP_EXTENSION.appex
            let url = Bundle.main.bundleURL.deletingLastPathComponent().deletingLastPathComponent()
            if let nestedBundleInParentApp = Bundle(url: url.appendingPathComponent("\(bundleName).bundle")) {
                bundle = nestedBundleInParentApp
            }
        }

        return bundle
    }

    @objc
    public static func setup() {
        BundleRegistry.default.registerBundle(identifier: bundleName, bundle: FlightSearchConfiguration.bundle)
    }
}
