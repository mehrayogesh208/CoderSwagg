//
//  ViewController.swift
//  CoderSwag
//
//  Created by yogesh mehra on 28/01/18.
//  Copyright © 2018 MEHRA. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Dataservice.ob.getTheCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categorycell") as? categorycell{
            let category = Dataservice.ob.getTheCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }
        else{
            return categorycell()
        }
        
        
    }
    
    @IBOutlet weak var categoryTab: UITableView!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = Dataservice.ob.getTheCategories()[indexPath.row]
        performSegue(withIdentifier:"ProductViewController" , sender: category)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let productViewController = segue.destination as? ProductsViewController{
            assert(sender as? categories != nil)
            productViewController.initializeProducts(category: sender as! categories)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTab.delegate = self
        categoryTab.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

