//
//  PersonalChatRoomScreen.swift
//  adeldemo
//
//  Created by Aman on 30/12/24.
//

import SwiftUI

struct PersonalChatRoomScreen : View {
//    @StateObject var vm = MessagesHomeScreenViewModel()
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            headerView
                .frame(height: 44)
            HStack(spacing: 6) {
                  Text("Today 02:15pm")
                    .font(Font.custom("Manrope", size: 10))
                    .lineSpacing(14)
                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                }
                .frame(width: 345, height: 14);
            Spacer()
            chatCardScreen()
                .padding(.leading, 15)
            chatCardScreenSender()
            chatBoxView
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .navigationBarHidden(true)
    }
    
    var headerView : some View {
        HStack {
            VStack {
                Image(.ICP.cheveronLeft)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(ColorSystem.heading)
                    .frame(width: 20, height: 20)
            }
            .frame(maxHeight: .infinity)
            .frame(width: 40)
            .modifier(ViewTapGesture(){
                dismiss()
            })
            Image(.model1)
                .resizable()
                .frame(width: 44, height: 44)
                .clipShape(.circle)
            VStack (alignment:.leading) {
                Text("Bessie Cooper")
                    .font(FontSystem.getFont(.p2, weight: .bold))
                    .foregroundStyle(ColorSystem.heading)
                Text("Online")
                    .font(FontSystem.getFont(.p3, weight: .regular))
                    .foregroundStyle(ColorSystem.description)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            CommonCircularButtonComponent(imageName: "ICP/phone_call_outline", tint: ColorSystem.heading, clickedCallback: {})
//            CommonCircularButtonComponent(imageName:"ICP/camera_video_outline", tint: ColorSystem.heading, clickedCallback: {})
            
        }
    }
    
    var chatBoxView  : some View {
        HStack {
                
            
            HStack {
//                Image("ICP/link_chain_ouline")
//                    .resizable()
//                    .renderingMode(.template)
//                    .foregroundStyle(ColorSystem.heading)
//                    .frame(width: 18, height: 18)
//                    .padding(.leading, 20)
                Image("ICP/gallery_photo_outline")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(ColorSystem.heading)
                    .frame(width: 18, height: 18)
                    .padding(.leading, 8)
                TextField("Search", text: Binding.constant(""))
            }
            .frame(maxHeight: .infinity)
            .frame(maxWidth: .infinity)
            .overlay(
                RoundedRectangle(cornerRadius: 999)
                    .stroke(ColorSystem.stroke, lineWidth: 0.5)
            )
            .padding(.horizontal, 15)
        }
        .frame(height: 52)
    }
}

struct chatCardScreen : View {
    var body: some View {
        HStack {
            Image("model1")
                .resizable()
                .frame(width: 36, height: 36)
                .clipShape(.circle)
            VStack(alignment:.leading) {
                Text("Hi, Bessie Cooper here!!")
                    .font(FontSystem.getFont(.p2, weight: .regular))
                    .foregroundStyle(ColorSystem.heading)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 20)
                    .background(Color(hex: "C0C0C0").opacity(0.12))
                    .clipShape(
                        RoundedCorner(topLeft: 12, topRight: 12, bottomRight: 12)
                    )
                Text("02:15 Pm")
                    .font(FontSystem.getFont(.p3, weight: .regular))
                    .foregroundStyle(ColorSystem.description)
                    .padding(.top, 5)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct chatCardScreenSender : View {
    var body: some View {
        HStack {
            
            VStack(alignment:.trailing) {
                Text("Hey, Nice to meet you!")
                    .font(FontSystem.getFont(.p2, weight: .regular))
                    .foregroundStyle(.black)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 20)
                    .background(ColorSystem.primary)
                    .clipShape(
                        RoundedCorner(topLeft: 12, topRight: 12, bottomLeft: 12, bottomRight: 0)
                    )
                Text("02:15 Pm")
                    .font(FontSystem.getFont(.p3, weight: .regular))
                    .foregroundStyle(ColorSystem.description)
                    .padding(.top, 5)
            }
            Image("model1")
                .resizable()
                .frame(width: 36, height: 36)
                .clipShape(.circle)
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
    }
}

#Preview {
    PersonalChatRoomScreen()
}
