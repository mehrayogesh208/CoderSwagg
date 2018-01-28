//
//  categories.swift
//  CoderSwag
//
//  Created by yogesh mehra on 28/01/18.
//  Copyright © 2018 MEHRA. All rights reserved.
//

import Foundation
struct categories{
    private(set) public var titleOfCategory: String!
    private(set) public var imageName: String!
    init(title: String,imageName: String) {
        
        self.titleOfCategory = title
        self.imageName = imageName
    }
}
