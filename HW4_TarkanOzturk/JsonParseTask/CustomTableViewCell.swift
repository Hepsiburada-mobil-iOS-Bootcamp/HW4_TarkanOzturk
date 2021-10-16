//
//  CustomTableViewCell.swift
//  JsonParseTask
//
//  Created by Erdem Özgür on 16.08.2020.
//  Copyright © 2020 Tarkan Ozturk. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var nameData: UILabel!
    @IBOutlet weak var descriptionData: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
