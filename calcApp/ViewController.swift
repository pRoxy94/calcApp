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
    
//  method of field cleaning
    @IBAction func clear(_ sender: Any) {
        txtHeight?.text = ""
        txtWidth?.text = ""
        lblResult?.text = "0"
    }
    
//  method to make keyboard disappear when you click out of the textfields
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
//   method to calculate area or perimeter
    func calc(what:String) {
        // NumberFormatter () --> used to convert a number into a human-readable string with a specified format. This formatter is especially useful when we want to display a currency string since it will convert the number to the proper currency for the current locale.
        let w = NumberFormatter().number(from: txtWidth.text ?? "0") as? Double
        
        let h = NumberFormatter().number(from: txtHeight.text ?? "0") as? Double
        
        if w != nil && h != nil {
            let result = what == "area" ? w!*h! : (w!+h!)*2
            // method to format the string - only two digits after the comma
            lblResult.text = String.localizedStringWithFormat("%1.2f", result)
        } else {
            lblResult.text = "Wrong values"
        }
    }
}
