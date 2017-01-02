//
//  AAAViewController.swift
//  ttttatt
//
//  Created by YU on 2016/12/27.
//  Copyright © 2016年 YU. All rights reserved.
//

import UIKit

class AAAViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = UserDefaults.userName
        NotificationCenter.default.post(name: .statusChanged, object: nil)
    }
    
    
    
}
