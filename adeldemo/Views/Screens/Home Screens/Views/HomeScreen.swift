//
//  HomeScreen.swift
//  adeldemo
//
//  Created by Aman on 12/12/24.
//

import SwiftUI


struct HomeScreen: View {
    @StateObject var vm : HomeScreenViewModel = HomeScreenViewModel()
    @State var isNavigateToSearchPage = false
    var body: some View {
        VStack {
            HStack {
                Image("ICP/line_menu_outline")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(ColorSystem.heading)
                    .frame(width: 25, height: 18)
                    .modifier(ViewTapGesture(){
                        vm.isNavigateToSettings = true
                    })
                Spacer()
                CommonCircularButtonComponent(imageName: "ICP/magnifying_glass_outline", tint: ColorSystem.heading, clickedCallback: {
                    vm.isNavigateToSearchPage = !vm.isNavigateToSearchPage
                })
                CommonCircularButtonComponent(imageName: "ICP/bell_outline", tint: ColorSystem.heading, clickedCallback: {
                    
                })
                
            }
            .padding(.horizontal, 15)
            ScrollView (.vertical) {
                HStack {
                    Image("model2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60,height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 999))
                    VStack {
                        HStack {
                            Text("Hi,")
                            Text("Jenny")
                            Spacer()
                        }
                        HStack {
                            Image("ICP/map_annotaion_marker_outline")
                                .resizable()
                                .renderingMode(.template)
                                .foregroundStyle(ColorSystem.heading)
                                .frame(width: 14, height: 14)
                            Text("40 Parker Rd. Allentown")
                            Spacer()
                        }
                        
                    }
                    .padding(.leading, 15)
                    Spacer()
                }
                .padding(.horizontal, 15)
                
                StoriesListComponent()
                    .padding(.top,10)
                    .padding(.horizontal, 15)
                HorizontalSelectowithImageComponent()
                    .padding(.top, 16)
                    .padding(.horizontal, 15)
                
                offerCard
                    .padding(.top, 16)
                    .padding(.horizontal, 5)
                topSpecialist
                    .padding(.top, 30)
                    .padding(.horizontal, 15)
                shopsList
                    .padding(.top, 30)
            }
            .scrollIndicators(.hidden)
            .navigationDestination(isPresented: $vm.isNavigateToSearchPage) {
                MainSearchScreen()
            }
            .navigationDestination(isPresented: $vm.isNavigateToShopDetailsScreen) {
                ShopDetailsScreen()
            }
            .navigationDestination(isPresented: $vm.isNavigateToSettings) {
                SettingsScreen()
            }
            //            .navigationTitle("Home")
            .navigationBarHidden(true)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    var offerCard : some View {
        VStack {
            HStack {
                VStack (alignment:.leading) {
                    HStack (alignment:.bottom) {
                        Text("25%")
                            .font(FontSystem.getFont(40.0, weight: .bold))
                            .foregroundStyle(.black)
                        Text("off")
                            .font(FontSystem.getFont(.p1, weight: .bold))
                            .foregroundStyle(.black)
                            .padding(.bottom, 5)
                        Spacer()
                    }
                    .padding(.top, 20)
                    Text("Vourcher for you next haircut service")
                        .font(FontSystem.getFont(.p2, weight: .regular))
                        .foregroundStyle(.black)
                    Spacer()
                    
                    VStack {
                        Text("Book now")
                            .padding(.horizontal, 25)
                            .padding(.vertical, 10)
                            .foregroundColor(.white)
                    }
                    .background(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .padding(.bottom, 14)
                    
                }
                .padding(.leading, 15)
                Image("model1")
                    .resizable()
                    .scaledToFill()
                    .frame(maxHeight: .infinity)
                    .frame(width: 176)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(5)

            }
        }
        .frame(height: 200)
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 5)
        .background(ColorSystem.primary)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
    
    var topSpecialist : some View {
        VStack (alignment:.leading) {
            Text("Top Specialist")
                .font(FontSystem.getFont(.p1, weight: .bold))
                .padding(.bottom, 15)
            
            HStack {
//                ForEach(0..<10){ index in
                    SpecialistCardComponent(name: "Jane Cooper", isVerified: true, rating: 4.0, description: "Description", personImage: "model1")
                    SpecialistCardComponent(name: "Jane Cooper", isVerified: true, rating: 4.0, description: "Description", personImage: "model1")
//                }
            }
        }
    }
    
    var shopsList : some View {
        VStack (spacing:20) {
            HStack  {
                Text("Nearest Saloon")
                Spacer()
                Text("View all")
                    .font(FontSystem.getFont(.p2, weight: .regular))
                    .foregroundStyle(ColorSystem.description)
            }
            .padding(.horizontal, 25)
            ForEach(0..<10, id:\.self) { index in
                ShopDetailsCardComponent()
                    .modifier(ViewTapGesture(lowerScale: 0.98){
                        vm.isNavigateToShopDetailsScreen = !vm.isNavigateToShopDetailsScreen
                    })
            }
        }
    }
}



#Preview {
    HomeScreen()
}

