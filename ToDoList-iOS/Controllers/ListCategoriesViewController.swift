//
//  ViewController.swift
//  ToDoList-iOS
//
//  Created by Pavel Palancica on 8/23/18.
//  Copyright © 2018 Pavel Palancica. All rights reserved.
//

import UIKit

class ListCategoriesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var categoriesTableView: UITableView!
    
    let categoriesArray = [
        "Personal List",
        "Grocery List",
        "Shopping List",
        "Things to Sell",
        "Movies to Watch"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.categoriesTableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
    }

    // MARK: UITableViewDataSource methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    // MARK: UITableViewDelegate methods
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.categoriesTableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        cell.textLabel?.text = categoriesArray[indexPath.row]
        
        return cell
    }
}

