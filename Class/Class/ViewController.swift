//
//  ViewController.swift
//  Class
//
//  Created by 藤井陽介 on 2019/06/12.
//  Copyright © 2019 touyou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    var position: Int = 0

    let monsters = [
        Monster(name: "猫", imageName: "monster001.png"),
        Monster(name: "魚", imageName: "monster002.png"),
        Monster(name: "虫", imageName: "monster003.png")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedNextButton(_ sender: Any) {
        position += 1
        if position >= monsters.count {
            position = 0
        }

        imageView.image = monsters[position].getImage()
        titleLabel.text = monsters[position].name
    }

    @IBAction func tappedPrevButton(_ sender: Any) {
        position -= 1
        if position < 0 {
            position = monsters.count - 1
        }

        imageView.image = monsters[position].getImage()
        titleLabel.text = monsters[position].name
    }
}

