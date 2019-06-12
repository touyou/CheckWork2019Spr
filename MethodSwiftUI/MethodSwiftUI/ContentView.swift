//
//  ContentView.swift
//  MethodSwiftUI
//
//  Created by 藤井陽介 on 2019/06/12.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var number1: String = ""
    @State var number2: String = ""
    @State var answer: String = "0"

    var body: some View {
        VStack {
            Text(answer).font(.title)
            TextField($number1)
                .frame(height: 30)
                .padding(5)
                .background(Color(red: 0.8, green: 0.8, blue: 0.8), cornerRadius: 15)
                .padding(10)
            TextField($number2)
                .frame(height: 30)
                .padding(5)
                .background(Color(red: 0.8, green: 0.8, blue: 0.8), cornerRadius: 15)
                .padding(10)
            Button(action: {
                self.answer = self.add(x: self.number1, y: self.number2)
            }) {
                Text("add")
            }
        }
    }

    func add(x: String, y: String) -> String {
        if let xNum = Int(x), let yNum = Int(y) {
            return String(xNum + yNum)
        } else {
            return "Error"
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
