//
//  StartsListCompoennt.swift
//  adeldemo
//
//  Created by Aman on 21/12/24.
//

import SwiftUI

struct StartsListCompoennt : View {
    var body: some View {
        HStack {
            ForEach(0..<5){index in
                Image("star")
                    .resizable()
                    .scaledToFit()
                    .padding(0)
            }
        }
        .padding(0)
    }
}
