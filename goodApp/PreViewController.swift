//
//  PreViewController.swift
//  goodApp
//
//  Created by Yu Shih-hao on 2019/7/14.
//  Copyright © 2019 Yu Shih-hao. All rights reserved.
//

import UIKit

class PreViewController: UIViewController {
    
    var name:String?
    var information: String?
    var imagename: String?

    @IBOutlet weak var storeImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var informationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if let name  = name, let information  = information, let imagename = imagename{
                storeImage.image = UIImage(named: imagename)
                nameLabel.text = name
                informationLabel.text = information
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
