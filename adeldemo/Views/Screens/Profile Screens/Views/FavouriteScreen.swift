//
//  FavouriteScreen.swift
//  adeldemo
//
//  Created by Aman on 02/01/25.
//

import SwiftUI

struct FavouriteScreen : View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            headingView
            ScrollView {
                favList
            }
            .padding(0)
            .scrollIndicators(.hidden)
        }
        .padding(.horizontal,10)
        .navigationBarHidden(true)
    }
    var headingView : some View {
        HStack {
            CommonCircularButtonComponent(image: .cheveronLeft, tint: ColorSystem.heading, clickedCallback: {
                dismiss()
            })
            Text("Favorite")
                .font(FontSystem.getFont(.p1, weight: .bold))
                .foregroundStyle(ColorSystem.heading)
            Spacer()
        }
    }
    var favList : some View {
        VStack {
            ForEach (0..<10){ index in
                ShopDetailsCardComponent(isFavourite: true)
            }
        }
    }
}


#Preview {
    FavouriteScreen()
}
