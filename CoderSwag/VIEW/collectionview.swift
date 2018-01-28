//
//  collectionview.swift
//  CoderSwag
//
//  Created by yogesh mehra on 28/01/18.
//  Copyright © 2018 MEHRA. All rights reserved.
//

import UIKit

class collectionview: UICollectionViewCell {
    
    
    @IBOutlet weak var prodImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var price: UILabel!
    func Updateviews(product: Product){
        prodImage.image = UIImage(named: product.imagename)
        title.text = product.title
        price.text = product.price
    }
}
