//
//  ListCategoryCell.swift
//  ToDoList-iOS
//
//  Created by Pavel Palancica on 8/27/18.
//  Copyright © 2018 Pavel Palancica. All rights reserved.
//

import UIKit

class ListCategoryCell: UITableViewCell {

    @IBOutlet weak var categoryNameLabel: UILabel!
    @IBOutlet weak var numberOfItemsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
