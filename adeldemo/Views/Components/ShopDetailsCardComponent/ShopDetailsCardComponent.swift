//
//  ShopDetailsCardComponent.swift
//  adeldemo
//
//  Created by Aman on 21/12/24.
//

import SwiftUI


struct ShopDetailsCardComponent : View {
    var isFavourite : Bool?
    var body: some View {
        VStack (alignment:.leading) {
            ZStack (alignment:.topTrailing) {
                Image("backgroundimg")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 180)
                if let isFavourite {
                    Image(.ICP.heartFavouriteFilled)
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing, 15)
                        .padding(.top, 15)
                }
                else {
                    VStack (alignment:.center) {
                        Image(.ICP.heartOutline)
                            .resizable()
                            .renderingMode(.template)
                            .foregroundStyle(ColorSystem.heading)
                            .frame(width: 20, height: 20)
                    }
                    .frame(width: 40, height: 40)
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 999))
                    .padding(.top, 8)
                    .padding(.trailing, 8)
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 30))
            HStack {
                Text("Luxe Locks Lounge")
                Image(.ICP.verifiedBadge)
                    .resizable()
                    .frame(width: 12, height: 12)
                Spacer()
                StartsListCompoennt()
                    .frame(height:12)
                Text("4.0")
            }
            
            Text("1901 Thornridge Cir. Shiloh, Hawaii 81063")
//                .frame(maxWidth: .infinity)
                .font(FontSystem.getFont(.p1, weight: .regular))
                .foregroundStyle(ColorSystem.description)
                .multilineTextAlignment(.leading)
            HStack {
                Image("category1")
                    .resizable()
                    .frame(width: 14, height: 14)
                    .padding(.leading, 18)
                Text("8.5 min (4.5 km)")
                    .padding(.leading, 3)
                    .font(FontSystem.getFont(.p2, weight: .regular))
                    .padding(.trailing, 10)
                
            }
            .frame(height: 30)
            .overlay(
                RoundedRectangle(cornerRadius: 999)
                    .stroke(ColorSystem.stroke, lineWidth: 0.5)
            )
        }
        .padding(.horizontal, 10)
        
    }
}

#Preview {
    ShopDetailsCardComponent()
}
