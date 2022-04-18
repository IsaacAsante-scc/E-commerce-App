//
//  ProductCard.swift
//  E-commerce App
//
//  Created by Isaac Asante on 2022-04-17.
//

import SwiftUI

struct ProductCard: View {
    var product: Product
    
    // Product Card for each SDMN Clothing product
    var body: some View {
        ZStack(alignment: .topTrailing) {
            // ZStack for Image in product card
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 200)
                    .scaledToFit()
                // VStack for product name and price
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    
                    Text("\(product.price)$")
                        .font(.caption)
                        .foregroundColor(Color.red)
                }
                .padding()
                .frame(width: 200, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 200, height: 250)
            .shadow(radius: 3)
            
            // Button for adding product to cart
            Button {
                print("Added to bag!")
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.gray)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
    }
}
