//
//  FlightSearch_UIView.swift
//  FlightSearch
//
//  Copyright © 2019 American Airlines. All rights reserved.
//

import Foundation
import UIKit

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
