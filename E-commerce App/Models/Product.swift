//
//  Products.swift
//  E-commerce App
//
//  Created by Isaac Asante on 2022-04-17.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "SDMNxEllesse Black T-Shirt", image: "SDMNxEllesseBlackT", price: 30),
                  Product(name: "SDMNxEllesse Camo T-Shirt", image: "SDMNxEllesseCamoT", price: 30),
                  Product(name: "SDMNxMr.MenCharacter T-Shirt Black", image: "SDMNxMr.MenCharacterTBlack", price: 30),
                  Product(name: "SDMNxMr.MenCharacter T-Shirt White", image: "SDMNxMr.MenCharacterTWhite", price: 30),
                  Product(name: "TonalTieDye T-Shirt", image: "TonalTieDyeT", price: 30),
                  Product(name: "TwoToneCamo T-Shirt", image: "TwoToneCamoT", price: 30),
                  Product(name: "TwoToneStripe T-Shirt", image: "TwoToneStripeT", price: 30),
                  Product(name: "TwoToneWhite T-Shirt", image: "TwoToneWhiteT", price: 30)

]
