//
//  ResetPasswordScreen.swift
//  adeldemo
//
//  Created by Aman on 11/12/24.
//

import SwiftUI

struct ResetPasswordScreen : View {
    
    var body: some View {
        VStack (alignment:.leading){
            HStack {
                CommonCircularButtonComponent(imageName: "ICP/cheveron_left", tint: .black, clickedCallback: {
                    
                })
                Spacer()
            }
            Text("Reset password")
                .multilineTextAlignment(.leading)
                .font(FontSystem.getFont(.h1, weight: .bold))
            Text("Please enter a new password.")
                .font(FontSystem.getFont(.p2, weight: .regular))
                .foregroundStyle(ColorSystem.description)
            VStack (spacing: 10.0){
                TextViewComponent(imageName:"ICP/lock_outline", placeHolder: "Current Password", value: Binding.constant(""))
                TextViewComponent(imageName:"ICP/lock_outline", placeHolder: "New Password", value: Binding.constant(""))
                TextViewComponent(imageName:"ICP/lock_outline", placeHolder: "Confirm Password", value: Binding.constant(""))
            }
            .padding(.top, 20)
            ButtonComponent(title: "Sign Up", imageName: nil, clickedCallback : {})
                .padding(.top, 30)
            
            Spacer()
        }
        .padding(15)
    }
}

#Preview {
    ResetPasswordScreen()
}
