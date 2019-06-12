//
//  ContentView.swift
//  ClassSwiftUI
//
//  Created by 藤井陽介 on 2019/06/12.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    let monsters: [Monster] = [
        Monster(name: "猫", imageName: "monster001"),
        Monster(name: "魚", imageName: "monster002"),
        Monster(name: "虫", imageName: "monster003"),
    ]
    @State var position: Int = 0
    var currentMonster: Monster {
        monsters[position]
    }

    var body: some View {
        VStack {
            Image(currentMonster.imageName).frame(height: 300).scaledToFit()
            HStack {
                Button(action: {
                    self.position -= 1
                    if self.position < 0 {
                        self.position = 2
                    }
                }) {
                    Text("Prev")
                }.padding(10)
                Text(currentMonster.name).frame(width: 100)
                Button(action: {
                    self.position += 1
                    if self.position > 2 {
                        self.position = 0
                    }
                }) {
                    Text("Next")
                }.padding(10)
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
