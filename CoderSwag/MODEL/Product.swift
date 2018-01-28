
//
//  Product.swift
//  CoderSwag
//
//  Created by yogesh mehra on 28/01/18.
//  Copyright © 2018 MEHRA. All rights reserved.
//

import Foundation
struct Product{
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imagename: String
    init(title: String,price: String,imageName: String){
        self.title = title
        self.price = price
        self.imagename = imageName
    }
}
