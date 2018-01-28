//
//  categorycell.swift
//  CoderSwag
//
//  Created by yogesh mehra on 28/01/18.
//  Copyright © 2018 MEHRA. All rights reserved.
//

import UIKit

class categorycell: UITableViewCell {
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    

    func updateViews(category: categories){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.titleOfCategory
        
    }

}
