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
        calc(what:"area")
    }
    
    @IBAction func calcPerimeter(_ sender: Any) {
        calc(what: "perimeter")
    }
    
    @IBAction func clear(_ sender: Any) {
        txtHeight?.text = ""
        txtWidth?.text = ""
        lblResult?.text = "0"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func calc(what:String) {
        let w = NumberFormatter().number(from: txtWidth.text ?? "0") as? Double
        
        let h = NumberFormatter().number(from: txtHeight.text ?? "0") as? Double
        
        if w != nil && h != nil {
            let result = what == "area" ? w!*h! : (w!+h!)*2
            lblResult.text = String.localizedStringWithFormat("%1.2f", result)
        } else {
            lblResult.text = "Wrong values"
        }
    }
    
}

