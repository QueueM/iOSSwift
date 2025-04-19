//
//  NotificationsScreen.swift
//  adeldemo
//
//  Created by Aman on 02/01/25.
//

import SwiftUI

struct NotificationsScreen : View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            headingView
            ScrollView {
                notificationListView
            }
                .padding(.top, 25)
                .scrollIndicators(.hidden)
        }
        .padding(.horizontal, 15)
        .frame(maxHeight: .infinity, alignment:.top)
        .navigationBarHidden(true)
    }
    var headingView : some View {
        HStack {
            CommonCircularButtonComponent(image: .cheveronLeft, tint: ColorSystem.heading, clickedCallback: {
                dismiss()
            })
            Text("Notifications")
                .font(FontSystem.getFont(.p1, weight: .bold))
                .foregroundStyle(ColorSystem.heading)
            Spacer()
        }
    }
    
    var notificationListView : some View {
        VStack {
            ForEach (0..<20, id: \.self){index in
                notificationCell
            }
        }
    }
    var notificationCell : some View {
        HStack {
            Image(.model2)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(.circle)
            VStack {
                HStack {
                    Text("Dianne Russell")
                        .font(FontSystem.getFont(.p1, weight: .bold))
                        .foregroundStyle(ColorSystem.heading)
                    Text("•  6:30 Pm")
                        .font(FontSystem.getFont(.p4, weight: .regular))
                        .foregroundStyle(ColorSystem.description)
                }
                .frame(maxWidth: .infinity, alignment:.leading)
                Text("Dianne Russell")
                    .font(FontSystem.getFont(.p2, weight: .regular))
                    .foregroundStyle(ColorSystem.description)
                    .frame(maxWidth: .infinity, alignment:.leading)
            }
            .frame(maxWidth: .infinity, alignment:.leading)
            Spacer()
            
        }
        .frame(height: 60)
        .frame(maxWidth: .infinity)
    }
}


#Preview {
    NotificationsScreen()
}
