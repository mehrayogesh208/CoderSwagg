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
    
    func getTheCategories()->[categories]{
        return category
    }
    
}
