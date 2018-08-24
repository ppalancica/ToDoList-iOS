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
    
    let listsData = [
        "Personal List" : ["Give up TV", "Call my family"],
        "Grocery List" : ["Chicken", "Bread", "Tomatoes", "Apples"],
        "Shopping List" : ["Jeans", "T-shirt", "Shorts", "Slacks", "Socks"],
        "Things to Sell" : ["Old MacBook", "Read books"],
        "Movies to Watch" : ["Pursuit of Hapiness"]
    ]
    
    var categoriesArray: Array<String> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        categoriesArray = Array(listsData.keys)
        
        categoriesTableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        
        categoriesTableView.dataSource = self
        categoriesTableView.delegate = self
    }

    // MARK: - UITableViewDataSource methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoriesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.categoriesTableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        cell.textLabel?.text = categoriesArray[indexPath.row]
        
        return cell
    }
    
    // MARK: - UITableViewDelegate methods
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(80)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        performSegue(withIdentifier: "goToList", sender: indexPath)
    }
    
    // MARK: - UIViewController methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToList" {
            
            guard let listVC = segue.destination as? ListViewController else {
                print("Make sure the 'goToList' segue transitions to a view controller of ListViewController type")
                return
            }
            
            guard let indexPath = sender as? IndexPath else {
                print("Make sure the 'sender' argument passed to performSegue is of IndexPath type")
                return
            }
            
            let categoryName = categoriesArray[indexPath.row]
            
            listVC.categoryName = categoryName
            listVC.listItems = listsData[categoryName]!
        }
    }
}
