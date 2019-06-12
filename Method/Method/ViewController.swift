//
//  ViewController.swift
//  Method
//
//  Created by 藤井陽介 on 2019/06/12.
//  Copyright © 2019 touyou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var number1TextField: UITextField!
    @IBOutlet var number2TextField: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedAddButton(_ sender: Any) {
        label.text = add(x: number1TextField.text!, y: number2TextField.text!)
    }

    func add(x: String, y: String) -> String {
        if let xNum = Int(x), let yNum = Int(y) {
            return String(xNum + yNum)
        } else {
            return "Error"
        }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

