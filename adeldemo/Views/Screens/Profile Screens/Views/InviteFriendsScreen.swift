//
//  InvitFriendsView.swift
//  adeldemo
//
//  Created by Aman on 02/01/25.
//

import SwiftUI


struct InviteFriendsScreen : View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack  {
            headingView
            ScrollView {
                friendsListView
            }
                .padding(.top, 25)
                .scrollIndicators(.hidden)
        }
        .padding(.horizontal, 15)
        .frame(maxHeight: .infinity, alignment: .top)
        .navigationBarHidden(true)
    }
    
    var headingView : some View {
        HStack {
            CommonCircularButtonComponent(image: .cheveronLeft, tint: ColorSystem.heading, clickedCallback: {
                dismiss()
            })
            Text("Invite Friends")
                .font(FontSystem.getFont(.p1, weight: .bold))
                .foregroundStyle(ColorSystem.heading)
            Spacer()
        }
    }
    
    var friendsListView : some View {
        VStack {
            ForEach (0..<20, id: \.self){index in
                friendsCell
            }
        }
    }
    var friendsCell : some View {
        HStack {
            Image(.model1)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(.circle)
            VStack {
                Text("Dianne Russell")
                    .font(FontSystem.getFont(.p1, weight: .bold))
                    .foregroundStyle(ColorSystem.heading)
                    .frame(maxWidth: .infinity, alignment:.leading)
                Text("Dianne Russell")
                    .font(FontSystem.getFont(.p2, weight: .regular))
                    .foregroundStyle(ColorSystem.description)
                    .frame(maxWidth: .infinity, alignment:.leading)
            }
//            Spacer()
            Text("Invite")
                .padding(.horizontal, 20)
                .padding(.vertical, 8)
                .background(ColorSystem.heading)
                .clipShape(RoundedRectangle(cornerRadius: 999))
                .foregroundStyle(ColorSystem.background)
        }
        .frame(height: 60)
        .frame(maxWidth: .infinity)
    }
}


#Preview {
    InviteFriendsScreen()
}
