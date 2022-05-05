//
//  BagManager.swift
//  E-commerce App
//
//  Created by Isaac Asante on 2022-04-26.
//

import Foundation

// Class to make changes to users products in bag
class BagManager: ObservableObject {
    
    // Varaible for all products in bag
    @Published private(set) var products: [Product] = []
    // Varible for price of all products in bag
    @Published private(set) var total: Int = 0
    
    // function to add product to product array and update price
    func addToBag(product: Product) {
        products.append(product)
        total = total + product.price
    }
    
    // Function to remove first instance of product from product array and update price
    func removeFromBag(product: Product) {
        if let removeProduct = products.firstIndex(where: {$0.id == product.id}) {
            products.remove(at: removeProduct)
        }
        
        total = total - product.price
    }
}
