//
//  ContentView.swift
//  Shared
//
//  Created by Артём Кармазь on 18.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var amount: Double?
    @State private var actualPrice: Double?
    @State private var somePrice: Double?
    @State private var logic = Logic()
    
    var body: some View {
        
        VStack(alignment: .leading) {
            TextField("Enter amount of coins...", value: $amount, format: .number)
            Text("Your amount: \(String(describing: amount))")
            TextField("Enter actual price of token", value: $actualPrice, format: .number)
            Text("Current price is \(String(describing: actualPrice))")
            TextField("Enter some price of token what you want", value: $somePrice, format: .number)
            Text("Current price is \(String(describing: somePrice))")
            
            // calc price
            Text("Actual price is \(String(describing: logic.calculatingPrice(amount: 0, actualPrice: 0, somePrice: 0).0))")
            Text("Actual price is \(String(describing: logic.calculatingPrice(amount: 0, actualPrice: 0, somePrice: 0).1))")
            
            
            Text("Current price is \(String(describing: logic.calculatingSinglePrice(amount: 0.01, actualPrice: 3.172)))")
            
        }.padding()
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}



