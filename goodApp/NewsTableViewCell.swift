//
//  NewsTableViewCell.swift
//  goodApp
//
//  Created by Yu Shih-hao on 2019/7/13.
//  Copyright © 2019 Yu Shih-hao. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var goodImage: UIImageView!
    @IBOutlet weak var goodNameLabel: UILabel!
    @IBOutlet weak var goodTimeLabel: UILabel!
    @IBOutlet weak var goodAddressLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
