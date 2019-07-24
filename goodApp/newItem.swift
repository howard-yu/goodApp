//
//  newItem.swift
//  goodApp
//
//  Created by Yu Shih-hao on 2019/7/14.
//  Copyright © 2019 Yu Shih-hao. All rights reserved.
//

import Foundation

class newItem {
    var image = ""
    var name = ""
    var opening_hr = ""
    var address = ""
    
    init(image: String, name: String, opening_hr: String, address: String) {
        self.image = image
        self.name = name
        self.opening_hr = opening_hr
        self.address = address
    }
}
