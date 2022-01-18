//
//  Engine.swift
//  CryptoCalc
//
//  Created by Артём Кармазь on 18.01.2022.
//

import Foundation

struct Logic {
    
    func calculatingSinglePrice(amount: Double, actualPrice: Double) -> Double {
        return (actualPrice * amount).rounded(toPlaces: 5)
    }
    
    func calculatingPrice(amount: Double?, actualPrice: Double?, somePrice: Double?) -> (Double?, Double?) {
        
        guard let actualPrice = actualPrice else {
            return
        }

        
        return ((actualPrice * amount).rounded(toPlaces: 5), (somePrice * amount).rounded(toPlaces: 5))
    }
}
