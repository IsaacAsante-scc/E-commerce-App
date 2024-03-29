//
//  ProductRow.swift
//  E-commerce App
//
//  Created by Isaac Asante on 2022-05-03.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var bagManager: BagManager
    var product: Product
    
    var body: some View {
        // Product row for items added to bag
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            // Name and price of product
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()
                
                Text("$\(product.price)")
            }
            
            // Spacer betwwwn product text/price and remove icon
            Spacer()
            
            // Trash icon to remove product from cart on tap
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    bagManager.removeFromBag(product: product)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[3])
            .environmentObject(BagManager())
    
    }
}
