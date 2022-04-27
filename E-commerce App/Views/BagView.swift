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
            Text("Your bag is empty!")
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
