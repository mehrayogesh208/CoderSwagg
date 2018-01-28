//
//  ProductsViewController.swift
//  CoderSwag
//
//  Created by yogesh mehra on 28/01/18.
//  Copyright © 2018 MEHRA. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionview", for: indexPath) as? collectionview{
            let product = products[indexPath.row]
            cell.Updateviews(product: product)
            return cell
        }
        else{
            return collectionview()
        }
    }
    
    private(set) public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionsOfProducts.delegate = self
        collectionsOfProducts.dataSource = self

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var collectionsOfProducts: UICollectionView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func initializeProducts(category: categories){
        products = Dataservice.ob.getProducts(CategoryTitle: category.titleOfCategory)
        navigationItem.title = category.titleOfCategory
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
