//
//  DenunciarTableViewCell.swift
//  Impactar
//
//  Created by Davi Rodrigues on 13/04/16.
//  Copyright © 2016 Davi Rodrigues. All rights reserved.
//

import UIKit

class DenunciarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellLabel: UILabel!
    
    @IBOutlet weak var cellTextField: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
