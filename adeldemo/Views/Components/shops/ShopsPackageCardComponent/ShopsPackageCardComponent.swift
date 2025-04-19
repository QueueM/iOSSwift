//
//  ShopsPackageCardComponent.swift
//  adeldemo
//
//  Created by Aman on 21/12/24.
//

import SwiftUI

struct ShopsPackageCardComponent : View {
    @State var navigateToServiceDetails : Bool = false
    @State var navigateToBooking : Bool = false
    var body: some View {
        VStack (alignment:.leading){
            Image("model2")
                .resizable()
                .scaledToFill()
                .frame(height: 180)
                .frame(maxWidth: .infinity)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .padding(5)

//                .padding()
            HStack{
                Text("Bridal Beauty Makeup")
                    .font(FontSystem.getFont(.p1, weight: .bold))
                Image(.ICP.verifiedBadge)
                    .resizable()
                    .frame(width: 12, height: 12)
                    .padding(.leading, 4)
            }
            .padding(.horizontal, 15)
            .padding(.top, 15)
            HStack {
                Text("Completed package offer till")
                    .font(FontSystem.getFont(.p2, weight: .regular))
                    .foregroundStyle(ColorSystem.description)
                Text("Jun 06,2024")
                    .font(FontSystem.getFont(.p2, weight: .regular))
                    .foregroundStyle(ColorSystem.heading)
                    .padding(.leading, 4)
            }
            .padding(.horizontal, 15)
            .padding(.top, 4)
            HStack {
                Text("$100.0")
                Spacer()
                Text("Book now")
                    .frame(maxHeight: .infinity)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 8)
                    .background(ColorSystem.heading)
                    .clipShape(.capsule)
                    .foregroundStyle(ColorSystem.background)
                    .modifier(ViewTapGesture(){
                        navigateToBooking = true
                    })
            }
            .frame(height:33)
            .padding(.horizontal, 15)
            .padding(.bottom, 15)
            .padding(.top, 8)
        }
        .modifier(ViewTapGesture(lowerScale: 0.98){
            navigateToServiceDetails = true
        })
        .overlay(
            RoundedRectangle(cornerRadius: 30)
                .stroke(ColorSystem.stroke, lineWidth: 0.5)
        )
        
        .navigationDestination(isPresented: $navigateToServiceDetails) {
            ServiceDetailsScreen()
        }
        .navigationDestination(isPresented: $navigateToBooking) {
            BookShopServiceAppointmentScreen()
        }
    }
}

#Preview {
    ShopsPackageCardComponent()
}
