//
//  ViewController.swift
//  ttttatt
//
//  Created by YU on 2016/12/27.
//  Copyright © 2016年 YU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(UserDefaults.userName ?? "nil")
        
        NotificationCenter.default.addObserver(self, selector: #selector(aa), name: .statusChanged, object: nil)
    }
    
    
    @IBAction func goooo(_ sender: Any) {
        UserDefaults.userName = textField.text!
        
        
    }
    
    
    func aa() {
        print("hi")
    }
    
    

}

