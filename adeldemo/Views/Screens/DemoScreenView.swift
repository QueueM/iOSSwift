//
//  DemoScreenView.swift
//  adeldemo
//
//  Created by Aman on 03/12/24.
//

import SwiftUI

struct chipView : View {
    var text : String
    var body: some View {
        VStack {
            Text(text)
                .padding()
        }
    }
}

struct DemoScreenView: View {
    
    var followView : some View {
        HStack {
            VStack {
                Image("backgroundimg")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 999))
                    .padding(1)
                    
            }
            .frame(width: 44, height: 44)
            .overlay(
                RoundedRectangle(cornerRadius: 999)
                    .stroke(Color(hex:"B3FF78"), lineWidth: 2)
            )
            VStack {
                HStack {
                    Text("Lotus Salon")
                        .font(.system(size: 16))
                        .bold()
                    Image("ICP/verified_badge")
                        .resizable()
                        .frame(width: 12, height: 12)
                }
                Text("468 Followers")
                    .font(.system(size: 16))
                    .foregroundStyle(Color(hex: "959595"))
            }
            Spacer()
            VStack {
                Text("Follow")
                    .font(.system(size: 12))
                    .padding(.horizontal, 15)
            }
            .frame(height: 27)
            .background(Color(hex: "B3FF78"))
            .clipShape(RoundedRectangle(cornerRadius: 999))
            .modifier(ViewTapGesture(lowerScale: 0.95))
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 15)
        .padding(.top, 24)
    }
    var headerSubview : some View {
        HStack (alignment: .bottom, spacing:20){
            VStack (alignment: .leading){
                HStack {
                    VStack {
                        Text("Open")
                            .padding(.vertical,4)
                            .padding(.horizontal, 12)
                            .background(Color(hex: "15B007"))
                            .font(.system(size: 12))
                            .foregroundStyle(.white)
                            .clipShape(
                                RoundedRectangle(cornerRadius: 999) // Clips the VStack to a rounded rectangle
                            )
                            .modifier(ViewTapGesture(lowerScale: 0.95))
                    }
                    HStack {
                        Image("star")
                            .frame(width:14,height:14)
                        Text("4.0")
                    }
                    .padding(.vertical,4)
                    .padding(.horizontal, 12)
                    .background(.ultraThinMaterial)
                    .font(.system(size: 12))
                    .foregroundStyle(.white)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 999) // Clips the VStack to a rounded rectangle
                    )
                    Spacer()
                }
                
                HStack {
                    Text("Lotus Salon")
                        .foregroundStyle(.white)
                        .bold()
                        .font(.system(size: 22))
                    Image("ICP/verified_badge")
                        .resizable()
                        .frame(width:20, height: 20)
                }
                Text("1901 Thornridge Cir. Shiloh, Hawaii 81063")
                    .foregroundStyle(.white)
                    .font(.system(size: 14))
                    .lineLimit(1)
            }
            VStack  {
//                Spacer()
                HStack (alignment: .bottom) {
                    VStack {
                        Image("ICP/message_outline")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                        .frame(width: 44, height: 44)
                        .background(Color(hex:"FFFFFF"))
                        .clipShape(RoundedRectangle(cornerRadius: 999))
                        .modifier(ViewTapGesture(lowerScale: 0.95))
                    VStack {
                        Image("ICP/two_arrow_outline")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                        .frame(width: 44, height: 44)
                        .background(Color(hex:"B3FF78"))
                        .clipShape(RoundedRectangle(cornerRadius: 999))
                        .modifier(ViewTapGesture(lowerScale: 0.95))
                }
                
            }
            .frame(alignment: .bottom)
        }
        .padding(.horizontal, 10)
        .padding(.bottom, 20)
        
    }
    var topSpecialistView : some View {
        VStack (alignment: .leading){
            Text("Top specialist")
                .bold()
            HStack (spacing:10){
                SpecialistCardComponent(name: "Jane Cooper", isVerified: true, rating: 4.0, description: "This is description", personImage: "model1")
                SpecialistCardComponent(name: "Jenny Wilson", isVerified: true, rating: 4.0, description: "This is description", personImage: "model2")
            }
            .padding(.top, 15)
        }
        .frame(maxWidth: .infinity)
    }
    var serviceTabView : some View {
        ZStack (alignment: .bottom) {
            VStack {
                ForEach(1..<6) { index in
                    serviceCellView(imageName: "testIcon1", name: "hair Style", types: "10 types")
                }
            }
            .padding(.bottom, 60)
            
            Text("Book now")
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color(hex: "F8F8F8"))
                .clipShape(RoundedRectangle(cornerRadius: 999))
                .modifier(ViewTapGesture(lowerScale: 0.95))
                .foregroundStyle(ColorSystem.heading)
        }
    }
    var aboutTabView : some View {
        VStack {
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                .font(.system(size: 14))
                .foregroundStyle(Color(hex: "959595"))
                .padding(.bottom, 20)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat asedrfsd sdf sdf sdfsdfsdf.")
                .font(.system(size: 14))
                .foregroundStyle(Color(hex: "959595"))
                .padding(.bottom, 20)
        }
    }
    func serviceCellView(imageName:String, name:String, types:String)-> some View{
        return HStack {
            Image(imageName)
                .resizable()
                .frame(width: 54, height: 54)
            VStack (alignment: .leading) {
                Text(name)
                    .font(.system(size: 14))
                    .bold()
                Text(types)
                    .font(.system(size: 14))
                    .foregroundStyle(Color(hex: "959595"))
            }
            Spacer()
            Text("View")
                .font(.system(size: 14))
                .foregroundStyle(.black.opacity(0.4))
        }
    }
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    HStack {
                        VStack {
                            Image("ICP/cheveron_left")
                                .renderingMode(.template)
                                .foregroundStyle(.white)
                        }
                        .frame(width: 44, height: 44)
                        .overlay(
                            RoundedRectangle(cornerRadius: 999)
                                .stroke(Color.white, lineWidth: 0.7)
                        )
                        .modifier(ViewTapGesture(lowerScale: 0.95))
                        Spacer()
                        
                        VStack {
                            Image("ICP/share_outline")
                        }
                        .frame(width: 44, height: 44)
                        .overlay(
                            RoundedRectangle(cornerRadius: 999)
                                .stroke(Color.white, lineWidth: 0.7)
                        )
                        .modifier(ViewTapGesture(lowerScale: 0.95))
                        VStack {
                            Image("ICP/heart_outline")
                        }
                        .frame(width: 44, height: 44)
                        .overlay(
                            RoundedRectangle(cornerRadius: 999)
                                .stroke(Color.white, lineWidth: 0.7)
                        )
                        .modifier(ViewTapGesture(lowerScale: 0.95))
                    }
                    .padding(.horizontal,10)
                    .padding(.top, 25)
                    Spacer()
                    headerSubview
                }
                .frame(height: 380)
                .background(
                    Image("backgroundimg")
                        .resizable()
                        .scaledToFill()
                )
                .clipShape(
                    RoundedRectangle(cornerRadius: 35) // Clips the VStack to a rounded rectangle
                )
                .padding(.horizontal, 5)
                
                followView
                topSpecialistView
                    .padding(.horizontal, 15.5)
                    .padding(.top, 24)
                //            TopTabView()
                CustomTopTabView(
                    tabsList: [
                        CustomTopTabView.DataModel(titile: "About", id: 0, view: AnyView(aboutTabView)),
                        CustomTopTabView.DataModel(titile: "Services", id: 1, view:
                                                    AnyView(serviceTabView)),
                        CustomTopTabView.DataModel(titile: "Package", id: 2, view: AnyView(Text("three"))),
                        CustomTopTabView.DataModel(titile: "Gallery", id: 3, view: AnyView(Text("four")))
                    ]
                )
                Spacer()
            }
            .scrollIndicators(.hidden)
            .padding(0)
        }
    }
}

#Preview {
    DemoScreenView()
}

class SpecialistCardComponentVM  : ObservableObject {
    @Published var isNavigateToBooking: Bool = false
    @Published var isNavigateSpecialistDetails: Bool = false
}
struct SpecialistCardComponent : View {
    @StateObject var vm = SpecialistCardComponentVM()
    var name : String
    var isVerified : Bool
    var rating : Double
    var description : String
    var personImage : String
    var body: some View {
        VStack {
            Image(personImage)
                .resizable()
                .scaledToFill()
                .frame(height: 120)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                .padding(.horizontal, 5)
                .padding(.top, 5)
            HStack {
                Text(name)
                    .font(.system(size: 14))
                    .lineLimit(1)
//                    .frame(maxWidth: .infinity)
                if isVerified {
                    Image("ICP/verified_badge")
                        .resizable()
                        .frame(width: 12, height: 12)
                }
                Spacer()
                    
                
                Image("star")
                    .resizable()
                    .frame(width: 10, height: 10)
                    .padding(0)
                Text("4.0")
                    .font(.system(size: 14.0))
                    .foregroundStyle(ColorSystem.heading)
            }
            .padding(0)
            .padding(.horizontal, 10)
            HStack {
                Text("Hair Specialist")
                    .font(.system(size: 14))
                    .foregroundStyle(ColorSystem.description)
                    .lineLimit(1)
                Spacer()
                Text("Book")
                    .frame(height: 27)
                    .font(.system(size: 12))
                    .padding(.horizontal, 15)
                    .background(ColorSystem.heading)
                    .foregroundStyle(ColorSystem.background)
                    .clipShape(RoundedRectangle(cornerRadius: 999))
                    .modifier(ViewTapGesture(lowerScale: 0.95){
                        vm.isNavigateToBooking = true
                    })
            }
            .padding(0)
            .padding(.horizontal, 10)
            .padding(.bottom, 15)
        }
//        .frame(width: 167)
        .modifier(ViewTapGesture(){
            vm.isNavigateSpecialistDetails = true
        })
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(ColorSystem.stroke, lineWidth: 0.7)
        )
        .navigationDestination(isPresented: $vm.isNavigateToBooking){
            BookShopServiceAppointmentScreen()
        }
        .navigationDestination(isPresented: $vm.isNavigateSpecialistDetails){
            SpecialistDetailsScreen()
        }
    }
}





struct DashedLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        return path
    }
}
