//
//  ViewController.swift
//  goodApp
//
//  Created by Yu Shih-hao on 2019/7/9.
//  Copyright © 2019 Yu Shih-hao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func showMessage() {
        let alertController = UIAlertController(
            title: "好帥",
            message: "游適豪好帥",
            preferredStyle: .alert
        )
        alertController.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        ))
        self.present(
            alertController,
            animated: true,
            completion: nil
        )
    }
}

