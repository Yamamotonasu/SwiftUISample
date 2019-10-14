//
//  FrogDetail.swift
//  Flog_book
//
//  Created by 山本裕太 on 2019/10/14.
//  Copyright © 2019 山本裕太. All rights reserved.
//

import SwiftUI

struct FrogDetail: View {

    var frog: Frog
    var body: some View {
        VStack {
            /** - Note: ZStackを使ってView同士をオーバーレイする
             *  もし、hasPositionがtrueの場合は"burn"の方のImageを使う
             */
            ZStack(alignment: .bottomTrailing) {
                Image(frog.imageName)
                    .resizable()
                    .frame(height: 300)
                if frog.hasPoison {
                    Image(systemName: "burn")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .background(Color.white)
                        .padding(.all)
                }
            }
            
            Form {
                Section(header: Text("生息地")) {
                    Text(frog.place)
                }
                
                Section(header: Text("特徴")) {
                    Text(frog.description)
                }
            }.navigationBarTitle(Text(frog.name), displayMode: .inline)
        }
    }
    
}

struct FrogDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                FrogDetail(frog: sampleFrogs[0])
            }
            NavigationView {
                FrogDetail(frog: sampleFrogs[3])
            }
        }
    }
}
