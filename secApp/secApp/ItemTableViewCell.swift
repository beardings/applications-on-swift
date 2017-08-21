//
//  ItemTableViewCell.swift
//  secApp
//
//  Created by Nikolas Ponomarov on 18.08.17.
//  Copyright © 2017 Nikolas Ponomarov. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
