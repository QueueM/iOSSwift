//
//  SignInScreenVerifyOTPView.swift
//  adeldemo
//
//  Created by Aman on 11/12/24.
//

import SwiftUI

struct SignInScreenVerifyOTPView : View {
    @StateObject var vm = SignInScreenVerifyOTPViewModel()
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack (alignment:.leading){
            HStack {
                CommonCircularButtonComponent(imageName: "ICP/cheveron_left", tint: ColorSystem.heading, clickedCallback: {
                    dismiss()
                })
                Spacer()
            }
            Text("Verify Code")
                .multilineTextAlignment(.leading)
                .font(FontSystem.getFont(.h1, weight: .bold))
            Text("Please enter the 4 digit security code we just sent you at 987-654-xxxx")
                .font(FontSystem.getFont(.p2, weight: .regular))
            
            OTPBoxView(otpText: $vm.optValue)
            HStack {
                Text("Don't receive Code?")
                    .padding(0)
                    .font(FontSystem.getFont(.p2, weight: .regular))
                    .foregroundStyle(ColorSystem.description)
                Text("Resend code")
                    .padding(0)
                    .font(FontSystem.getFont(.p2, weight: .regular))
                    .foregroundStyle(ColorSystem.heading)
            }
            .frame(maxWidth: .infinity)
            .padding(.top, 50)
            ButtonComponent(title: "Sign in", imageName: nil, clickedCallback : {
                vm.isNavigateToHomeScreen = true
            })
                .padding(.top, 30)
            Spacer()
            
        }
        .padding(15)
        .navigationBarHidden(true)
        .navigationDestination(isPresented: $vm.isNavigateToHomeScreen) {
            TabsScreen()
        }
    }
}

struct otpTextfieldComponent : View {
    var body: some View {
        VStack {
            
        }
    }
}
#Preview {
    SignInScreenVerifyOTPView()
}


struct OTPBoxView : View {

    @Binding var otpText : String
    let numberOfDigit = 4

    var autoCompleteFunc: (() -> Void)?
    @FocusState private var iskeyboardShowing : Bool
    var body: some View {
        VStack{
            HStack(spacing: 0){
                ForEach(0..<numberOfDigit, id: \.self){digit in
                    OTPTextBox(digit)
                }
            }.background(content:{
                TextField("", text: $otpText.limit(numberOfDigit))
                    .keyboardType(.numberPad)
                    .textContentType(.oneTimeCode)
                    .focused($iskeyboardShowing)
                    .frame(width: 0.1, height: 0.1)
                    .opacity(0.0001)


            })

            .onTapGesture {
                iskeyboardShowing = true
            }
            .onChange(of: otpText) {newValue in

                    // MARK: making otp as num only
                    let filtered = newValue.filter { "0123456789".contains($0) }
                    if filtered != newValue {
                        self.otpText = filtered
                    }
                    if newValue.count == numberOfDigit {
                        autoCompleteFunc?()
                    }
                }

        }.onAppear(perform: {
            iskeyboardShowing = true
        })
        .toolbar {
            ToolbarItem(placement: .keyboard){
                Button("Done"){
                    iskeyboardShowing.toggle()
                }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
            }
        }
    }

    // OTP Box Design
    @ViewBuilder
    func OTPTextBox(_ index:Int)->some View{
        ZStack{
            if otpText.count > index{
                let startIndex = otpText.startIndex
                let charIndex = otpText.index(startIndex, offsetBy: index)
                let charToString = String(otpText[charIndex])
                Text(charToString)
            } else {
                Text(iskeyboardShowing && otpText.count == index ? "|" : " ")
                    .foregroundStyle(iskeyboardShowing && otpText.count == index ? .black : ColorSystem.heading)
            }
        }
        .frame(width: 66, height: 66, alignment: .center)
        .background(iskeyboardShowing && otpText.count == index ? ColorSystem.primary : ColorSystem.background2)
        .clipShape(RoundedRectangle(cornerRadius: 999))
            // add bottom line here
//            .background(.gray.opacity(0.2))
            
        .frame(maxWidth: .infinity)
//        .overlay(
//            
//            Rectangle()
//                .frame(width: 45, height: 2)
//                .foregroundColor(iskeyboardShowing && otpText.count == index ? .black:.gray) // Change the color as desired
//                .padding(.top, 56) // Adjust the padding to position the underline
//        )
    }

}

extension Binding where Value == String{
    func limit(_ length: Int)->Self{
        if self.wrappedValue.count > length{
            DispatchQueue.main.async{
                self.wrappedValue = String(self.wrappedValue.prefix(length))
            }

        }
        return self
    }
}
