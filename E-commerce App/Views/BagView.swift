//
//  BagView.swift
//  E-commerce App
//
//  Created by Isaac Asante on 2022-04-26.
//

import SwiftUI

struct BagView: View {
    @EnvironmentObject var bagManager: BagManager
    
    var body: some View {
        ScrollView {
            // If else statement to check if there are any items in bag and display message or product row
            if bagManager.products.count > 0 {
                ForEach(bagManager.products, id: \.id) {
                    product in
                    ProductRow(product: product)
                }
                
                HStack {
                    Text("Your bag total is ")
                    Spacer()
                    Text("$\(bagManager.total).00")
                        .foregroundColor(Color.blue)
                        .bold()
                }
                .padding()
                
                PaymentButton(action: {})
                    .padding()
            } else {
                Text("Your bag is empty!")
            }
        }
        .navigationTitle(Text("My Bag"))
        .padding(.top)
        
    }
}

struct BagView_Previews: PreviewProvider {
    static var previews: some View {
        BagView()
            .environmentObject(BagManager())
    }
}
