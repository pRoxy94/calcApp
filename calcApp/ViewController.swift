//
//  ViewController.swift
//  calcApp
//
//  Created by Rossana Laricchia on 08/06/2020.
//  Copyright © 2020 Laricchia Rossana . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtWidth: UITextField!
    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calcArea(_ sender: Any) {
        let w = txtWidth.text
        let h = txtHeight.text
        if w != nil {
            if h != nil {
                
            }
        }
    }
    
    
    
    @IBAction func calcPerimeter(_ sender: Any) {
    }
    
    @IBAction func clear(_ sender: Any) {
    }
    
    
    
}

