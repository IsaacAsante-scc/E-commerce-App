//
//  ContentView.swift
//  E-commerce App
//
//  Created by Isaac Asante on 2022-04-17.
//

import SwiftUI

struct ContentView: View {
    // State Object variable to initalize instance of BagManager
    @StateObject var bagManager = BagManager()
    
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                            .environmentObject(bagManager)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("SDMN Clothing"))
            .toolbar {
                NavigationLink {
                    BagView()
                        .environmentObject(bagManager)
                } label: {
                    BagButton(numberOfProducts: bagManager.products.count)

                }
                }
            }
        .navigationViewStyle(StackNavigationViewStyle())

        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
