//
//  CartButton.swift
//  E-commerce App
//
//  Created by Isaac Asante on 2022-04-20.
//

import SwiftUI

struct BagButton: View {
    var numberOfProducts: Int
    
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "bag")
                .padding(.top, 5)
                .padding(.trailing, 8)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.red)
                    .cornerRadius(50)
                    
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        BagButton(numberOfProducts: 1)
    }
}
