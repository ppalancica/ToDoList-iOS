//
//  ListViewController.swift
//  ToDoList-iOS
//
//  Created by Pavel Palancica on 8/23/18.
//  Copyright © 2018 Pavel Palancica. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    var listData: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print("Category name is: \(listData!)")
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
