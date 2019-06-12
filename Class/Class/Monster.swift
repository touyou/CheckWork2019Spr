//
//  Monster.swift
//  Class
//
//  Created by 藤井陽介 on 2019/06/12.
//  Copyright © 2019 touyou. All rights reserved.
//

import UIKit

class Monster {
    var name: String = ""
    var imageName: String = ""

    init(name: String, imageName: String) {
        self.name = name
        self.imageName = imageName
    }

    func getImage() -> UIImage? {
        return UIImage(named: imageName)
    }
}
