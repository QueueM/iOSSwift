//
//  HorizontalSelectowithImageComponent.swift
//  adeldemo
//
//  Created by Aman on 21/12/24.
//

import SwiftUI


struct HorizontalSelectowithImageComponent : View {
    
    @State var selectedIndex : Int = 0
    var body: some View {
        ScrollView (.horizontal){
            HStack  (spacing:16){
                ForEach(0..<7) { index in
                    cards(isSelected: selectedIndex == index, index:index)
                }
            }
        }
        .scrollIndicators(.hidden)
    }
    func cards(isSelected:Bool, index:Int)-> some View {
        VStack {
            VStack {
                Spacer()
                Image("category1")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(isSelected ? .black : ColorSystem.heading)
                    .frame(width: 24, height: 24)
//                    .padding(18)
                Spacer()
            }
            .frame(width: 60, height: 60)
            .overlay(
                RoundedRectangle(cornerRadius: 999)
                    .stroke(ColorSystem.stroke, lineWidth: 0.7)
            )
            .background(isSelected ? ColorSystem.primary : .clear)
            .clipShape(RoundedRectangle(cornerRadius: 999))
            Text("Makeup")
                .frame(height: 17)
                .frame(maxWidth: .infinity)
                .padding(.top, 10)
                .foregroundColor(isSelected ? ColorSystem.heading : ColorSystem.description)
//                .background(.red)
        }
        .frame(width: 75)
        .background(.black.opacity(0.0001))
        .modifier(ViewTapGesture(lowerScale: 0.98){
            selectedIndex = index
        })
    }
}

#Preview {
    HorizontalSelectowithImageComponent()
}
