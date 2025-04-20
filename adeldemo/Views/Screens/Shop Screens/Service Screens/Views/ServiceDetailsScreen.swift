//
//  ServiceDetailsScreen.swift
//  adeldemo
//
//  Created by Aman on 23/12/24.
//

import SwiftUI

struct ServiceDetailsScreen : View {
    @Environment(\.dismiss) private var dismiss
    @State var navigateToBooking = false
    var body: some View {
        ZStack {
            ScrollView {
                VStack (alignment:.leading) {
                    ZStack (alignment:.topLeading) {
                        AutoScroller(
                            indicatorOffSet:30.0,
                            imageNames: ["model1", "model2"],
                            autoScrollInterval: nil,
                            bindedSelectedIndex: Binding.constant(0)
                        )
                        //            .clipShape(CustomCorners(topLeft: 0, topRight: 40, bottomLeft: 40, bottomRight: 40))
                        .frame(height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 35))
                        //                Image(.ICP.cheveronLeft)
                        CommonCircularButtonComponent(imageName: "ICP/cheveron_left", tint: ColorSystem.background, clickedCallback: {
                            dismiss()
                        })
                        .padding(.top, 25)
                        .padding(.leading, 10)
                    }
                    Text("Bridal Beauty Makeup")
                        .frame(height: 29)
                        .padding(.top, 30)
                        .padding(.leading, 15)
                        .font(FontSystem.getFont(.h3, weight: .bold))
                        .foregroundStyle(ColorSystem.heading)
                    HStack {
                        Text("Completed package offer till")
                            .foregroundStyle(ColorSystem.description)
                            .font(FontSystem.getFont(.p2, weight: .regular))
                        Text("Jun 06,2024")
                            .foregroundStyle(ColorSystem.heading)
                            .font(FontSystem.getFont(.p2, weight: .regular))
                    }
                    .frame(height: 20)
                    .padding(.leading, 15)
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.")
                        .padding(.top, 10)
                        .padding(.horizontal, 15)
                        .font(FontSystem.getFont(.p2, weight: .regular))
                        .foregroundStyle(ColorSystem.description)
                    
                    Rectangle()
                        .frame(maxWidth: .infinity)
                        .frame(height: 0.5)
                        .foregroundStyle(ColorSystem.stroke)
                        .padding(.horizontal, 15)
                        .padding(.vertical, 20)
                    HStack {
                        Image("model2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 48, height: 48)
                            .clipShape(.circle)
                        VStack (alignment:.leading){
                            Text("Services")
                                .frame(height: 22)
                                .font(FontSystem.getFont(.p1, weight: .bold))
                                .foregroundStyle(ColorSystem.heading)
                            Text("Lorem ipsum dolor sit amet consectetur")
                                .font(FontSystem.getFont(.p2, weight: .regular))
                                .foregroundStyle(ColorSystem.description)
                        }
                        .padding(.leading, 12)
                    }
                    
                    servicesListView
                        .padding(.horizontal, 15)
                        .padding(.top, 20)
                    servicesListView
                        .padding(.horizontal, 15)
                    servicesListView
                        .padding(.horizontal, 15)
                    servicesListView
                        .padding(.horizontal, 15)
                        .padding(.bottom, 80)
                    
                    
                }
                //        .ignoresSafeArea()
                .padding(.horizontal, 5)
                .background(ColorSystem.background)
                
            }
            VStack {
                Spacer()
                Text("Book")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(ColorSystem.primary)
                    .clipShape(.capsule)
                    .padding(.horizontal, 15)
                    .padding(.bottom, 20)
                    .foregroundStyle(.black)
                    .padding(.horizontal, 15)
                    .modifier(ViewTapGesture(){
                        navigateToBooking = true
                    })
            }
            .ignoresSafeArea()
        }
        .scrollIndicators(.hidden)
        .navigationBarHidden(true)
        .navigationDestination(isPresented: $navigateToBooking) {
            BookShopServiceAppointmentScreen()
        }
    }
    
    var servicesListView : some View {
        VStack {
            HStack {
                HStack {
                    Rectangle()
                        .frame(width: 10, height: 10)
                        .foregroundStyle(ColorSystem.primary)
                        .clipShape(.circle)
                    Text("Hair Styling")
                    Spacer()
                }
                .frame(maxWidth: .infinity)
//                    Spacer()
                HStack {
                    Rectangle()
                        .frame(width: 10, height: 10)
                        .foregroundStyle(ColorSystem.primary)
                        .clipShape(.circle)
                    Text("Hair Styling")
                    Spacer()
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    ServiceDetailsScreen()
}
