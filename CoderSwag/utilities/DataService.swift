//
//  DataService.swift
//  CoderSwag
//
//  Created by yogesh mehra on 28/01/18.
//  Copyright © 2018 MEHRA. All rights reserved.
//

import Foundation
class Dataservice{
    static let ob = Dataservice()//singelton(one copy in memory)
    private let category = [
        categories(title: "SHIRTS",imageName:"shirts.png"),categories(title: "HOODIES",imageName:"hoodies.png"),
        categories(title: "HATS",imageName:"hats.png"),
        categories(title: "DIGITAL",imageName:"digital.png")
    ]
    private let hats = [
        Product(title: "Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Logo Hat Black", price: "$22", imageName: "hat02.png")
        ,Product(title: "Logo Hat White", price: "$23", imageName: "hat03.png"),
         Product(title: "Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    private let hoodies = [
        Product(title: "Logo Hoodie Gray", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Logo Hoodie Gray", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Logo Hoodie Black", price: "$32", imageName: "hoodie04.png"),

        
    ]
    private let shirts = [
        Product(title: "Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Badge Shirt Black", price: "$19", imageName: "shirt02.png"),
        Product(title: "Logo Shirt Red", price: "$20", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$21", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05.png")
    ]

    private let digitalGoods = [Product]()
    
    
    func getTheCategories()->[categories]{
        return category
    }
    func getProducts(CategoryTitle: String)->[Product]{
        switch CategoryTitle{
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return gethoodies()
        case "HATS":
            return gethats()
        case "DIGITAL":
           return  getdigital()
        default:
            return getShirts()
        }
    }
    func getShirts() -> [Product] {
        return shirts
    }
    func gethoodies() -> [Product] {
        return hoodies
    }
    func gethats() -> [Product] {
        return hats
    }
    func getdigital() -> [Product] {
        return digitalGoods
    }
    
    
}
