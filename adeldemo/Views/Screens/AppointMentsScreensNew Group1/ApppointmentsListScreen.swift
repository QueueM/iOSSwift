//
//  ApppointmentsListScreen.swift
//  adeldemo
//
//  Created by Aman on 30/12/24.
//

import SwiftUI

struct AppointmentsListScreen : View {
    @Environment(\.dismiss) private var dismiss
    @State var selectedMenu = 0
    
    var body: some View {
        VStack {
            navigationView
            
            customtoggleSwitchComponent(selectedIndex:$selectedMenu, option1: "Upcoming", option2: "Past")
                .padding(.top, 25)
            if selectedMenu == 0 {
                appointmentsListView
                    .padding(.top, 20)
            }
            else {
                pastAppointmentListView
                    .padding(.top, 20)
            }
        }
        .padding(.horizontal, 15)
        .frame(maxHeight: .infinity, alignment: .top)
        .navigationBarHidden(true)
    }
    var navigationView : some View {
        HStack {
//            CommonCircularButtonComponent(image: .cheveronLeft, tint: ColorSystem.heading, clickedCallback: {dismiss()})
            Text("Your appointments")
                .font(FontSystem.getFont(.p1, weight: .bold))
                .foregroundStyle(ColorSystem.heading)
            Spacer()
            CommonCircularButtonComponent(imageName: "ICP/map_route_outline", tint: ColorSystem.heading, clickedCallback: {})
        }
    }
    
    var appointmentsListView : some View {
        ScrollView {
            VStack (spacing:25) {
                ForEach(0..<20, id : \.self) { index in
                    UpComingAppointmentComponent()
                }
            }
        }
        .scrollIndicators(.hidden)
    }
    
    var pastAppointmentListView : some View {
        ScrollView {
            VStack (spacing:25) {
                ForEach(0..<20, id : \.self) { index in
                    UpComingAppointmentComponent(isExpired: true)
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    AppointmentsListScreen()
}


struct UpComingAppointmentComponent : View {
    @State var isToggleActive : Bool = false
    var isExpired = false
    var body: some View {
        VStack {
            HStack {
                Image(.backgroundimg)
                    .resizable()
                    .frame(width: 110,  height: 110)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                VStack (alignment:.leading) {
                    HStack{
                        Text("Lotus Saloon")
                            .font(FontSystem.getFont(.p1, weight: .bold))
                            .foregroundStyle(ColorSystem.heading)
                        Image(.ICP.verifiedBadge)
                            .tint(.blue)
                        Spacer()
                        Image(.ICP.binDeleteOutline)
                            .resizable()
                            .renderingMode(.template)
                            .foregroundStyle(ColorSystem.heading)
                            .frame(width: 20, height: 20)
                    }
                    Text("1901 Thornridge Cir. Shiloh, Hawaii 81063")
                        .font(FontSystem.getFont(.p2, weight: .regular))
                        .foregroundStyle(ColorSystem.description)
                    Text("Services: Regular haircut, Classic shaving")
                        .font(FontSystem.getFont(.p2, weight: .regular))
                        .foregroundStyle(ColorSystem.description)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            if isExpired == false {
                HStack {
                    Image(.ICP.clockOutline)
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(ColorSystem.heading)
                        .frame(width: 16, height: 16)
                        .padding(.leading, 15)
                    Text("6:30 pm - 05 Jun")
                        .font(FontSystem.getFont(.p2, weight: .regular))
                        .foregroundStyle(ColorSystem.description)
                        .padding(.leading, 4)
                    Spacer()
                    Toggle(isOn: $isToggleActive) {
                        //                   Text("Toggle Switch")
                        //                       .font(.headline)
                    }
//                    .tint(ColorSystem.stroke)
                    .toggleStyle(SwitchToggleStyle()) // Makes it look like a UISwitch
                    .frame(width: 40)
                    Text("30 min before")
                        .font(FontSystem.getFont(.p2, weight: .regular))
                        .foregroundStyle(ColorSystem.description)
                        .padding(.leading, 8)
                    Image(.ICP.cheveronRight)
                        .resizable()
                        .frame(width: 14, height: 14)
                        .padding(.trailing, 15)
                }
                .frame(height: 48)
                .frame(maxWidth: .infinity, alignment:.leading)
                .background(ColorSystem.background2)
                .clipShape(.capsule)
                //            .padding(.horizontal, 15)
            }
            else {
                HStack {
                    Text("Review")
                        .frame(maxWidth: .infinity)
                        .font(FontSystem.getFont(.p2, weight: .medium))
                        .foregroundStyle(ColorSystem.description)
                        .frame(height: 36)
                        .clipShape(.capsule)
                        .overlay(
                            RoundedRectangle(cornerRadius: 999)
                                .stroke(ColorSystem.stroke, lineWidth: 0.5)
                        )
                        .modifier(ViewTapGesture(lowerScale: 0.98){
                            
                        })
                    Text("Reschedule")
                        .frame(maxWidth: .infinity)
                        .font(FontSystem.getFont(.p2, weight: .medium))
                        .foregroundStyle(.black)
                        .frame(height: 36)
                        .background(ColorSystem.primary)
                        .clipShape(.capsule)
                        .modifier(ViewTapGesture(lowerScale: 0.98){
                            
                        })
                }
            }
        }
        
    }
    
}


struct customtoggleSwitchComponent : View {
    @Binding var selectedIndex : Int
    var option1 : String
    var option2 : String
    var body: some View {
        HStack  {
            Text(option1)
                .frame(maxWidth: .infinity)
                .font(FontSystem.getFont(.p2, weight: .medium))
                .padding(.vertical, 12)
                .foregroundStyle(selectedIndex == 0 ? ColorSystem.background : ColorSystem.heading)
                .background(selectedIndex == 0 ? ColorSystem.heading : ColorSystem.background)
                .clipShape(.capsule)
                .padding(5)
                .modifier(ViewTapGesture(lowerScale: 0.98){
                    selectedIndex = 0
                })
            Text(option2)
                .frame(maxWidth: .infinity)
                .font(FontSystem.getFont(.p2, weight: .medium))
                .padding(.vertical, 12)
                .padding(.horizontal, 50)
                .foregroundStyle(selectedIndex != 0 ? ColorSystem.background : ColorSystem.heading)
                .background(selectedIndex != 0 ? ColorSystem.heading : ColorSystem.background)
                .clipShape(.capsule)
                .padding(5)
                .modifier(ViewTapGesture(lowerScale: 0.98){
                    selectedIndex = 1
                })
        }
        .frame(maxWidth: .infinity)
        .clipShape(.capsule)
        .overlay(
            RoundedRectangle(cornerRadius: 999)
                .stroke(ColorSystem.stroke, lineWidth: 0.5)
        )
    }
}
