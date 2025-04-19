//
//  ProfileScreen.swift
//  adeldemo
//
//  Created by Aman on 02/01/25.
//

import SwiftUI

struct SettingsScreen : View {
    @StateObject var vm = SettingsScreenVM()
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            ZStack (alignment:.top) {
                topView
                navigationBar
                    .padding(.horizontal, 15)
            }
            inputFieldsView
                .padding(.top, 30)
            Spacer()
        }
        .navigationDestination(isPresented: $vm.isNavigateToFavourite) {
            FavouriteScreen()
        }
        .navigationDestination(isPresented: $vm.isNavigateToInviteFriends) {
            InviteFriendsScreen()
        }
        .navigationDestination(isPresented: $vm.isNavigateToEditProfileDetails) {
            ProfileEditScreen()
        }
        .navigationDestination(isPresented: $vm.isNavigateNotification) {
            NotificationsScreen()
        }
        .navigationBarHidden(true)
    }
    
    var navigationBar : some View {
        HStack {
            CommonCircularButtonComponent(image: .cheveronLeft, tint: .black, clickedCallback: {dismiss()})
            Text("Settings")
                .font(FontSystem.getFont(.p1, weight: .bold))
                .foregroundStyle(.black)
            Spacer()
            CommonCircularButtonComponent(imageName: "ICP/bell_outline", tint: .black, clickedCallback: {
                vm.isNavigateNotification = true
            })
        }
    }
    var topView : some View {
        VStack {
            ZStack (alignment:.bottom) {
                Rectangle()
                    .foregroundStyle(ColorSystem.primary)
                    .scaledToFill()
                    .frame(height: 180)
                    .frame(width: screenWidth + 200)
                    .clipShape(CircularBottomShape())
//                    .offset(y:-50)
                    .ignoresSafeArea()
                ZStack (alignment:.bottomTrailing){
                    VStack {
                        Image("model1")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(.circle)
                            .padding(5)
                    }
                    .background(ColorSystem.background)
                    .clipShape(.circle)
                    Image(.ICP.pencilOutline)
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(ColorSystem.background)
                        .frame(width: 14, height: 14)
                        .padding(6)
                        .background(ColorSystem.heading)
                        .clipShape(RoundedRectangle(cornerRadius: 999))
                        .overlay(
                            RoundedRectangle(cornerRadius: 999)
                                .stroke(ColorSystem.background, lineWidth:2)
                        )
                }
                .shadow(radius: 20)
                .modifier(ViewTapGesture(){
                    vm.isNavigateToEditProfileDetails = true
                })
                
            }
            .frame(width: screenWidth)
            .padding(0)
            Text("Leslie Alexander")
                .font(FontSystem.getFont(.h5, weight: .bold))
                .foregroundStyle(ColorSystem.heading)
                .padding(.top, 10)
            Text("Hair Stylist at Lotus Salon")
                .font(FontSystem.getFont(.p2, weight: .regular))
                .foregroundStyle(ColorSystem.description)
                .padding(.top, 1)
        }
        
    }
    
    var inputFieldsView : some View {
        VStack {
//            ForEach (0..<6, id:\.self) { index in
//            ButtonComponent(title: "Payment Methods", clickedCallback: {})
//            TextViewComponent(
//                imageName:"ICP/user_outline",
//                rightImageName: "ICP/cheveron_right",
//                placeHolder: "Payment Methods",
//                value: Binding.constant(""))
////            }
//            TextViewComponent(imageName:"ICP/user_outline", placeHolder: "Name", tint: .red, value: Binding.constant(""))
            getButton(title:"Favourites",image:Image(.ICP.heartOutline), tint:ColorSystem.heading)
                .modifier(ViewTapGesture(){
                    vm.isNavigateToFavourite = true
                })
            getButton(title:"Invite Friends",image:Image(.ICP.peopleOutline), tint:ColorSystem.heading)
                .modifier(ViewTapGesture(){
                    vm.isNavigateToInviteFriends = true
                })
            getButton(title:"FAQs",image:Image(.ICP.questionmarkCircleOutline), tint:ColorSystem.heading)
                .modifier(ViewTapGesture(){
                    vm.isNavigateToFAQs = true
                })
            getButton(title:"About Us",image:Image(.ICP.exclamationInfoCircleOutline), tint:ColorSystem.heading)
                .modifier(ViewTapGesture(){
                    vm.isNavigateToAboutUs = true
                })
            getButton(title:"Log out",image:Image(.ICP.arrowExitRightOutline), tint:ColorSystem.error)
                .modifier(ViewTapGesture(){
                    vm.isNavigateToLogout = true
                })
        }
    }
    
    func getButton(title:String,image:Image, tint:Color) -> some View {
        HStack {
            image
                .resizable()
                .renderingMode(.template)
                .foregroundStyle(tint)
                .frame(width: 20, height: 20)
            Text(title)
                .font(FontSystem.getFont(.p2, weight: .regular))
                .foregroundStyle(tint)
                .frame(maxWidth: .infinity, alignment: .leading)
            Image(.ICP.cheveronRight)
                .resizable()
                .renderingMode(.template)
                .foregroundStyle(tint)
                .frame(width: 20, height: 20)
        }
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .frame(height: 54)
        .overlay(
            RoundedRectangle(cornerRadius: 999)
                .stroke(tint, lineWidth: 0.5)
        )
        .padding(.horizontal, 15)
        .background(.black.opacity(0.001))
    }
}

#Preview {
    SettingsScreen()
}


