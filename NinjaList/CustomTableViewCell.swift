//
//  CustomTableViewCell.swift
//  NinjaList
//
//  Created by Mockingjay on 01/01/2016.
//  Copyright © 2016 umbrellacorp. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
