//
//  ForgotPasswordScreen.swift
//  adeldemo
//
//  Created by Aman on 11/12/24.
//

import SwiftUI

struct ForgotPasswordScreen : View {
    
    var body: some View {
        VStack (alignment:.leading){
            HStack {
                CommonCircularButtonComponent(imageName: "ICP/cheveron_left", tint: .black, clickedCallback: {
                    
                })
                Spacer()
            }
            Text("Forgot password")
                .multilineTextAlignment(.leading)
                .font(FontSystem.getFont(.h1, weight: .bold))
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.")
                .font(FontSystem.getFont(.p2, weight: .regular))
                .foregroundStyle(ColorSystem.description)
            VStack (spacing: 10.0){
                TextViewComponent(imageName:"ICP/user_outline", placeHolder: "Name", value: Binding.constant(""))
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
    ForgotPasswordScreen()
}
