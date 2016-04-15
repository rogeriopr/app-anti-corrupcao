//
//  SliderTableViewCell.swift
//  Impactar
//
//  Created by Davi Rodrigues on 14/04/16.
//  Copyright © 2016 Davi Rodrigues. All rights reserved.
//

import UIKit

class SliderTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var slider: UISlider!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
