//
//  FrogItem.swift
//  Flog_book
//
//  Created by 山本裕太 on 2019/10/14.
//  Copyright © 2019 山本裕太. All rights reserved.
//

import SwiftUI

struct FrogItem: View {
    var frog: Frog
    var body: some View {
        // - Note: HStackは水平方向のレイアウトを行う
        HStack(spacing: 0.0) {
            Image(frog.imageName)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            Text(frog.name)
                .font(.title)
            if frog.hasPoison {
                Image(systemName: "burn")
            }
            // - Note: 残りのレイアウトにスペースを作成
            Spacer()
        }
    }
}

struct FrogItem_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ContentSizeCategory.allCases, id: \.self) { category in
            FrogItem(frog: sampleFrogs[3])
                .previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, category)
                .previewDisplayName("\(category)")
        }
    }
}
