//
//  ContentView.swift
//  Flog_book
//
//  Created by 山本裕太 on 2019/10/14.
//  Copyright © 2019 山本裕太. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var frogs: [Frog]
    var body: some View {
        NavigationView {
            List(frogs) { frog in
                NavigationLink(destination: FrogDetail(frog: frog)) {
                    FrogItem(frog: frog)
                }
            }.navigationBarTitle("カエル図鑑")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(frogs: sampleFrogs)
    }
}
