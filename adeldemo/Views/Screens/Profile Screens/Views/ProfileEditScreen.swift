//
//  ProfileEditScreen.swift
//  adeldemo
//
//  Created by Aman on 02/01/25.
//

import SwiftUI

struct ProfileEditScreen : View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            headingView
            profileImageView
            inputFieldsView
                .padding(.top, 30)
            Spacer()
            ButtonComponent(title: "Save Changes", clickedCallback: {
                
            })
            .padding(.horizontal, 15)
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
            Text("Edit Profile")
                .font(FontSystem.getFont(.p1, weight: .bold))
                .foregroundStyle(ColorSystem.heading)
                .padding(.leading, 12)
            Spacer()
        }
    }
    
    var profileImageView : some View {
        ZStack (alignment:.bottomTrailing){
            VStack {
                Image("model1")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(.circle)
                    .padding(5)
            }
            .background(ColorSystem.background)
            .clipShape(.circle)
            Image(.ICP.pencilOutline)
                .resizable()
                .renderingMode(.template)
                .foregroundStyle(ColorSystem.background)
                .frame(width: 14, height: 14)
                .padding(6)
                .background(ColorSystem.heading)
                .clipShape(RoundedRectangle(cornerRadius: 999))
                .overlay(
                    RoundedRectangle(cornerRadius: 999)
                        .stroke(ColorSystem.background, lineWidth:2)
                )
        }
        .shadow(radius: 20)
    }
    var inputFieldsView : some View {
        VStack {
            TextViewComponent(imageName:"ICP/user_outline", placeHolder: "Name", tint:ColorSystem.heading, value: Binding.constant(""))
            TextViewComponent(imageName:"ICP/envelop_mail_outline", placeHolder: "Email", tint: ColorSystem.heading, value: Binding.constant(""))
            TextViewComponent(
                imageName:"circle-flags_us",
                placeHolder: "Phone number",
                tint: ColorSystem.heading,
                renderingMode: .original,
                value: Binding.constant(""))
            TextViewComponent(
                imageName:"ICP/female_outline",
                placeHolder: "Phone number",
                tint: ColorSystem.heading,
                value: Binding.constant(""))
            TextViewComponent(
                imageName:"ICP/calendar__outline",
                placeHolder: "Phone number",
                tint: ColorSystem.heading,
                value: Binding.constant(""))
            TextViewComponent(
                imageName:"ICP/map_annotaion_marker_outline",
                placeHolder: "Phone number",
                tint: ColorSystem.heading,
                value: Binding.constant(""))
        }
    }
}

#Preview {
    ProfileEditScreen()
}
