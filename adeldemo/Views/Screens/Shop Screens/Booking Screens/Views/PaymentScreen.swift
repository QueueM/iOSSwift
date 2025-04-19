//
//  PaymentScreen.swift
//  adeldemo
//
//  Created by Aman on 30/12/24.
//

import SwiftUI

struct PaymentScreen : View {
    @Environment(\.dismiss) private var dismiss
    @StateObject var vm = PaymentScreenViewModel()
    var body: some View {
        VStack {
            HStack {
                CommonCircularButtonComponent(image: .cheveronLeft, tint: ColorSystem.heading, clickedCallback: {
                    dismiss()
                })
                Text("Payment")
                    .font(FontSystem.getFont(.p1, weight: .bold))
                    .foregroundStyle(ColorSystem.heading)
                Spacer()
            }
            .frame(height: 44)
            .padding(.bottom, 20)
            ZStack (alignment:.bottom) {
                ScrollView {
                    CustomProgressView(currentStep:1)
                    ShopDetailsCardComponent()
                    serviceView
                        .padding(.top, 30)
                    paymentMethodView
                        .padding(.top, 30)
                }
                .scrollIndicators(.hidden)
                Text("Continue")
                    .font(FontSystem.getFont(.p1, weight: .medium))
                    .foregroundStyle(.black)
//                    .padding(.vertical, 13)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(ColorSystem.primary)
                    .padding(.bottom, 0.1)
                    .clipShape(.capsule)
                    .modifier(ViewTapGesture(lowerScale: 0.98) {
                        vm.isNavigateToBookingSucessfullScreen = true
                    })
            }
        }
        .padding(.horizontal, 15)
        .navigationBarHidden(true)
        .navigationDestination(isPresented: $vm.isNavigateToBookingSucessfullScreen) {
            BookingSucessfulScreen()
        }
    }
    var serviceView : some View {
        VStack {
            HStack {
                Text("Service")
                    .font(FontSystem.getFont(.p1, weight: .bold))
                Spacer()
            }
            serviceCellView(imageName: "testIcon1", name: "Hair Cut", types: "02:30 pm - 05 Jun, 2024")
        }
    }
    var paymentMethodView : some View {
        VStack {
            HStack {
                Text("Payment Method")
                    .font(FontSystem.getFont(.p1, weight: .bold))
                Spacer()
            }
            VStack {
                HStack {
                    Image(.ICP.homeOutline)
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .foregroundStyle(ColorSystem.heading)
                        .frame(width: 30, height: 25)
                    Text("In Shop")
                    Spacer()
                    checkBoxComponent(isSelected: Binding.constant(false))
                        .frame(width:20, height:20)
                }
                .padding(15)
                .frame(height: 54)
                .overlay(
                    RoundedRectangle(cornerRadius: 999)
                        .stroke(ColorSystem.stroke, lineWidth: 0.5)
                )
//                HStack {
//                    Image(.star)
//                        .frame(width: 30, height: 30)
//                    Text("PayPal")
//                    Spacer()
//                    checkBoxComponent(isSelected: Binding.constant(false))
//                }
//                .padding(15)
//                .frame(height: 54)
//                .overlay(
//                    RoundedRectangle(cornerRadius: 999)
//                        .stroke(ColorSystem.stroke, lineWidth: 0.5)
//                )
            }
        }
    }
    func serviceCellView(imageName:String, name:String, types:String)-> some View{
        return HStack {
            Image(imageName)
                .resizable()
                .renderingMode(.template)
                .foregroundStyle(ColorSystem.heading)
                .frame(width: 54, height: 54)
            VStack (alignment: .leading) {
                HStack {
                    Text(name)
                        .font(.system(size: 14))
                        .foregroundStyle(ColorSystem.heading)
                        .bold()
                    Spacer()
                    Text("$5.00")
                        .font(FontSystem.getFont(.p2, weight: .bold))
                        .foregroundStyle(ColorSystem.heading)
                    
                }
                HStack {
                    Image(.ICP.clockOutline)
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(ColorSystem.heading)
                        .frame(width:14, height:14)
                    Text(types)
                        .font(FontSystem.getFont(.p2, weight: .regular))
                        .foregroundStyle(ColorSystem.description)
                }
            }
            Spacer()
            Text("View")
                .font(.system(size: 14))
                .foregroundStyle(.black.opacity(0.4))
        }
    }
}

#Preview {
    PaymentScreen()
}
