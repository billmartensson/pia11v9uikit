//
//  personTableViewCell.swift
//  pia11v9uikit
//
//  Created by Bill Martensson on 2022-11-07.
//

import UIKit

class personTableViewCell: UITableViewCell {

    
    @IBOutlet weak var firstnameLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
