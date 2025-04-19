//
//  SignInScreenView.swift
//  adeldemo
//
//  Created by Aman on 11/12/24.
//

import SwiftUI

class SignInScreenViewModel : ObservableObject{
    enum loginTypes : String{
        case email
        case phoneNumber
    }
    @Published var isNavigateToVerifyOTPScreen : Bool = false
    @Published var loginType : loginTypes
    @Published var isAcceptedTermsAndCondition : Bool = false
    @Published var phoneNumber : String = ""
    init(loginType:loginTypes){
        self.loginType = loginType
    }
}

struct SignInScreenView : View {
    @StateObject var vm : SignInScreenViewModel = SignInScreenViewModel(loginType: .phoneNumber)
    var body: some View {
        VStack (alignment:.leading){
//            HStack {
//                CommonCircularButtonComponent(imageName: "ICP/cheveron_left", tint: .black, clickedCallback: {
//                    
//                })
//                Spacer()
//            }
            Text("\(vm.loginType == .email ? "Sign In" : "Your phone!")")
                .multilineTextAlignment(.leading)
                .font(FontSystem.getFont(.h1, weight: .bold))
            Text("You will receive a 4 digit code for phone verification number.")
                .font(FontSystem.getFont(.p2, weight: .regular))
            if vm.loginType == .email {
                VStack (spacing: 10.0){
                    TextViewComponent(imageName:"ICP/envelop_mail_outline", placeHolder: "Email", value: Binding.constant(""))
                    TextViewComponent(imageName:"ICP/lock_outline", placeHolder: "Password", value: Binding.constant(""))
                }
                .padding(.top, 30)
            }
            else {
                VStack (spacing: 10.0){
                    TextViewComponent(imageName:"circle-flags_us", placeHolder: "Phone Number", renderingMode: .original, value: $vm.phoneNumber)
                    HStack{
                        checkBoxComponent(isSelected: $vm.isAcceptedTermsAndCondition)
                            .frame(width: 20, height: 20)
                        Text("I agree with")
                            .padding(0)
                            .font(FontSystem.getFont(.p2, weight: .regular))
                            .foregroundStyle(ColorSystem.description)
                        Text("Terms and Privacy")
                            .padding(0)
                            .font(FontSystem.getFont(.p2, weight: .regular))
                            .foregroundStyle(ColorSystem.heading)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
//                    .background(.red)
                    
                }
                .padding(.top, 30)
                
            }
            ButtonComponent(title: "Sign in", imageName: nil, clickedCallback : {
                vm.isNavigateToVerifyOTPScreen = true
            })
                .padding(.top, 30)
            
            Text( { () -> String in
                switch vm.loginType {
                case .email:
                    return "Sign in with phone number"
                case .phoneNumber:
                    return "Sign in with email"
                }
            }())
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
                .frame(height: 42)
                .padding(.top, 10)
                .modifier(ViewTapGesture(lowerScale: 0.98){
                    withAnimation {
                        if vm.loginType == .email {
                            vm.loginType = .phoneNumber
                        }
                        else {
                            vm.loginType = .email
                        }
                    }
                })
//                .padding(.bottom, 20)
            Spacer()
            if vm.phoneNumber == "" {
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
                    Text("Sign up")
                        .modifier(ViewTapGesture(lowerScale: 0.98){
                        })
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.top, 22)
//                .padding(.bottom, 15)
            }
        }
        .padding(15)
        .navigationBarHidden(true)
        .navigationDestination(isPresented: $vm.isNavigateToVerifyOTPScreen) {
            SignInScreenVerifyOTPView()
        }
    }
}

struct checkBoxComponent : View {
    @Binding var isSelected : Bool
    var body: some View {
        VStack {
            if isSelected {
                Image("ICP/checkbox_checked_1")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(ColorSystem.heading)
            }
            else {
                Image("ICP/checkbox_unchecked_1")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(ColorSystem.heading)
                    
            }
            
        }
        .modifier(ViewTapGesture(lowerScale: 0.98){
            isSelected = !isSelected
        })
    }
}
#Preview {
    SignInScreenView()
}
