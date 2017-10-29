//
//  EventTableViewCell.swift
//  Taller
//
//  Created by saul ulises urias guzmàn on 29/10/17.
//  Copyright © 2017 saul ulises urias guzmàn. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    //MARK: - IBOUtlets
    @IBOutlet weak var imageEvent: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    
    //MARK: - View Life
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
