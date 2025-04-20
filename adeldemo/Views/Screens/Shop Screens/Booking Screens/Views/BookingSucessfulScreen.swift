//
//  BookingSucessfulScreen.swift
//  adeldemo
//
//  Created by Aman on 30/12/24.
//

import SwiftUI

struct BookingSucessfulScreen : View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            HStack {
                CommonCircularButtonComponent(image: .cheveronLeft, tint: ColorSystem.heading, clickedCallback: {
                    dismiss()
                })
                Text("Booking successfully")
                    .font(FontSystem.getFont(.p1, weight: .bold))
                    .foregroundStyle(ColorSystem.heading)
                Spacer()
            }
            .frame(height: 44)
            .padding(.bottom, 20)
            VStack {
                CustomProgressView(currentStep:2)
                Spacer()
                successCardView
                Spacer()
                orderDetailsView
                Text("Continue Booking")
                .font(FontSystem.getFont(.p1, weight: .medium))
                .foregroundStyle(.black)
//                    .padding(.vertical, 13)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(ColorSystem.primary)
                .padding(.bottom, 0.1)
                .clipShape(.capsule)
                .modifier(ViewTapGesture(lowerScale: 0.98) {
                    
                })
            }
        }
        .padding(.horizontal, 15)
        .navigationBarHidden(true)
    }
    
    var successCardView : some View {
        VStack {
            Image("ICP/outline_done-all")
                .frame(width: 24, height: 24)
                .padding(20)
                .background(ColorSystem.primary)
                .clipShape(.circle)
                .overlay(
                    RoundedRectangle(cornerRadius: 999)
                        .stroke(ColorSystem.primary.opacity(0.5), lineWidth: 10)
                )
            Text("Your appointment booking is successfully.")
                .font(FontSystem.getFont(.h3, weight: .bold))
                .multilineTextAlignment(.center)
                .foregroundStyle(ColorSystem.heading)
                .padding(.top, 20)
            Text("You can view the appointment booking info in the “Appointment” section.")
                .font(FontSystem.getFont(.p2, weight: .regular))
                .multilineTextAlignment(.center)
                .foregroundStyle(ColorSystem.description)
                .padding(.top, 8)
            
        }
        .frame(maxWidth: .infinity)
    }
    
    var orderDetailsView : some View {
        VStack (alignment:.leading){
            HStack {
                
                Text("ID:")
                    .font(FontSystem.getFont(.p2, weight: .regular))
                    .foregroundStyle(ColorSystem.description)
                
                Text("#654321")
                    .font(FontSystem.getFont(.p2, weight: .regular))
                    .foregroundStyle(ColorSystem.heading)
                Spacer()
            }
            .frame(height: 20)
            HStack {
                Text("Lotus Salon")
                    .font(FontSystem.getFont(.p1, weight: .bold))
                    .foregroundStyle(ColorSystem.heading)
                Spacer()
            }
            .frame(height: 22)
            HStack {
                Text("1901 Thornridge Cir. Shiloh, Hawaii 81063")
                    .font(FontSystem.getFont(.p2, weight: .regular))
                    .foregroundStyle(ColorSystem.description)
                Spacer()
            }
            .frame(height: 22)
            DividerLineComponent()
            serviceCellView(imageName: "testIcon1", name: "hair Style", types: "10 types")
        }
        .frame(maxWidth: .infinity)
        .padding(15)
        .overlay (
            RoundedRectangle(cornerRadius: 20)
                .stroke(ColorSystem.stroke, lineWidth: 0.5)
        )
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
    BookingSucessfulScreen()
}
