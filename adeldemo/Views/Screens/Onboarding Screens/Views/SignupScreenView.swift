//
//  SignupScreen.swift
//  adeldemo
//
//  Created by Aman on 10/12/24.
//

import SwiftUI


struct SignUpScreenView : View {
    @StateObject var vm = SignUpScreenViewModel()
    var body: some View {
        VStack (alignment:.leading){
//            HStack {
//                CommonCircularButtonComponent(imageName: "ICP/cheveron_left", tint: .black, clickedCallback: {
//                })
//                Spacer()
//            }
            Text("Sign up")
                .multilineTextAlignment(.leading)
                .font(FontSystem.getFont(.h1, weight: .bold))
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.")
                .font(FontSystem.getFont(.p2, weight: .regular))
            VStack (spacing: 10.0){
                TextViewComponent(imageName:"ICP/user_outline", rightImageName: nil, placeHolder: "Name", value: Binding.constant(""))
                TextViewComponent(imageName:"ICP/envelop_mail_outline", placeHolder: "Phone", value: Binding.constant(""))
//                TextViewComponent(imageName:"ICP/lock_outline", placeHolder: "Password", value: Binding.constant(""))
                
            }
            .padding(.top, 30)
            ButtonComponent(title: "Sign Up", imageName: nil, clickedCallback : {
                vm.isNavigateToVerifyOTPScreen = true
            })
                .padding(.top, 30)
            
            Text("Sign up with phone number")
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
                .frame(height: 42)
                .padding(.top, 10)
                .modifier(ViewTapGesture(){
                    vm.isNavigateToSignInScreen = true
                })
//                .padding(.bottom, 20)
            Spacer()
            DividerLineComponent(separatorText: "or")
            Spacer()
            VStack (spacing: 10) {
                ButtonComponent(buttonType:.monochrome, title: "Continue with Google", imageName: "ICP/google_outline_bold", alignment: .leading, clickedCallback : {})
                ButtonComponent(buttonType:.monochrome, title: "Continue with Facebook", imageName: "ICP/facebook_outline_bold", alignment: .leading, clickedCallback : {})
                ButtonComponent(buttonType:.monochrome, title: "Continue with Apple", imageName: "ICP/apple_outline_bold", alignment: .leading, clickedCallback : {})
            }
//            Spacer()
            HStack {
                Text("already have an account?")
                Text("Sign in")
                    .modifier(ViewTapGesture(lowerScale: 0.98){
                    })
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.top, 22)
//            .padding(.bottom, 15)
        }
        .padding(15)
        .navigationDestination(isPresented: $vm.isNavigateToVerifyOTPScreen) {
            SignInScreenVerifyOTPView()
        }
        .navigationDestination(isPresented: $vm.isNavigateToSignInScreen) {
            SignInScreenView()
        }
        .navigationBarHidden(true)
    }
}

struct TextViewComponent : View {
    var imageName : String?
    var rightImageName : String?
    var placeHolder : String
    var tint : Color = ColorSystem.heading
    var renderingMode : Image.TemplateRenderingMode = .template
    @Binding var value : String
    var body: some View {
        HStack {
            Image(imageName ?? "")
                .resizable()
                .renderingMode(renderingMode)
                .foregroundStyle(tint)
                .frame(width: 22, height: 22)
                .tint(tint)
            TextField(placeHolder, text: $value)
                .font(FontSystem.getFont(.p2, weight: .regular))
                .foregroundStyle(tint)
                .frame(maxWidth: .infinity)
            if let rightImageName {
                Image(rightImageName)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(tint)
                    .frame(width: 20, height: 20)
                
            }
        }
        .padding(.horizontal, 20)
        .frame(height: 52)
        .overlay(
            RoundedRectangle(cornerRadius: 999)
                .stroke(ColorSystem.stroke, lineWidth: 0.5)
        )
        .modifier(ViewTapGesture())
        
    }
}

struct DividerLineComponent : View {
    var lineHeight : Double = 0.5
    var lineColor : Color = ColorSystem.stroke
    var separatorText : String?
    var textColor : Color = ColorSystem.description
    var body: some View {
        HStack {
            VStack {}
                .frame(maxWidth: .infinity)
                .frame(height: lineHeight)
                .background(lineColor)
            if let separatorText {
                Text(separatorText)
                    .padding(.horizontal, 6)
                    .foregroundStyle(textColor)
            }
            VStack {}
                .frame(maxWidth: .infinity)
                .frame(height: lineHeight)
                .background(lineColor)
        }
        .frame(height: 20.0)
    }
}
struct ButtonComponent : View{
    enum buttonTypes {
        case success
        case monochrome
    }
    var buttonType : buttonTypes = .success
    var title : String
    var height = 50.0
    var imageName : String?
    var alignment : Alignment = .center
    var animationScale = 0.98
    var clickedCallback : (()->Void)
    var body: some View {
        VStack (alignment:.leading) {
            HStack {
                if let imageName {
                    Image(imageName)
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .frame(width: 22, height: 22)
                        .foregroundStyle({ () -> Color in
                            switch buttonType {
                            case .success:
                                return  .black
                            case .monochrome:
                                return ColorSystem.background
                            }
                        }())
                }
                Text(title)
                    .font(FontSystem.getFont(.p1, weight: .medium))
                    .foregroundStyle(
                        { () -> Color in
                            switch buttonType {
                            case .success:
                                return  .black
                            case .monochrome:
                                return ColorSystem.background
                            }
                        }()
                       
                    )
            }
            .frame(maxWidth: .infinity, alignment: alignment)
            .padding(.horizontal, 20)
        }
        .frame(height: 50.0)
        .frame(maxWidth: .infinity)
//        .background()
        .background({ () -> Color in
            switch buttonType {
            case .success:
                return ColorSystem.primary
            case .monochrome:
                return ColorSystem.heading
            }
        }())
        .clipShape(RoundedRectangle(cornerRadius: 999))
        .modifier(ViewTapGesture(lowerScale: animationScale){
            clickedCallback()
        })
        
    }
}
#Preview {
    SignUpScreenView()
}
