//
//  Extensions.swift
//  CryptoCalc
//
//  Created by Артём Кармазь on 18.01.2022.
//

import Foundation

extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
