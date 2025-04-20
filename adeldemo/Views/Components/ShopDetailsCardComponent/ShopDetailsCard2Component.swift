//
//  ShopDetailsCard2Component.swift
//  adeldemo
//
//  Created by Aman on 21/12/24.
//

import SwiftUI



struct ShopDetailsCard2Component : View {
    @State var navigateToBooking = false
    var body: some View {
        HStack {
            Image("backgroundimg")
                .resizable()
                .frame(width: 130)
                .frame(maxHeight: .infinity)
                .clipShape(RoundedRectangle(cornerRadius: 25))
            
            VStack (alignment:.leading) {
                HStack {
                    StartsListCompoennt()
                        .frame(height: 13)
                    Text("4.0")
                        .font(FontSystem.getFont(.p2, weight: .semibold))
                }
                HStack (alignment:.center){
                    Text("Velvet Vanity")
                        .font(FontSystem.getFont(.p1, weight: .semibold))
                    Image(.ICP.verifiedBadge)
                        .frame(width: 12, height: 12)
                }
                Text("1901 Thornridge Cir. Shiloh, Hawaii 81063")
                    .lineLimit(1)
                HStack {
                    Image(.ICP.clockOutline)
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(ColorSystem.heading)
                        .frame(width: 12, height: 12)
                    Text("8.5 min (4.5 km)")
                        .font(FontSystem.getFont(.p2, weight: .regular))
                    Spacer()
                    Text("Book")
                        .font(FontSystem.getFont(.p3, weight: .regular))
                        .foregroundStyle(ColorSystem.background)
                        .padding(.horizontal, 15)
                        .padding(.vertical, 5)
                        .background(ColorSystem.heading)
                        .clipShape(RoundedRectangle(cornerRadius: 999))
                        .modifier(ViewTapGesture(){
                            navigateToBooking = true
                        })
                    
                }
                .frame(height: 27)
                
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 15)
            
        }
        .frame(height: 120)
        .frame(maxWidth: .infinity)
        .navigationDestination(isPresented: $navigateToBooking){
            BookShopServiceAppointmentScreen()
        }
    }
}

#Preview {
    ShopDetailsCard2Component()
}
