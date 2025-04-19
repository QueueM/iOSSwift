//
//  TabsScreen.swift
//  adeldemo
//
//  Created by Aman on 21/12/24.
//

import SwiftUI

struct TabsScreen : View {
    @State private var selectedTab: Int = 0
    var body: some View {
        ZStack (alignment:.bottom){
            // Main content based on selected tab
            TabContent(selectedTab: $selectedTab)
                .frame(maxWidth: .infinity, maxHeight: .infinity)

            // Custom tab bar
            
            CustomTabBar(selectedTab: $selectedTab)
        }
//        .edgesIgnoringSafeArea(.bottom) // To cover the tab bar area
//        .background(.red)
    }
}


struct TabContent: View {
    @Binding var selectedTab: Int

    var body: some View {
//        NavigationStack {
            switch selectedTab {
            case 0:
                HomeScreen()
            case 1:
                Text("No Screen in figma")
            case 2:
                ReelsHomeScreen()
            case 3:
                AppointmentsListScreen()
            case 4:
                MessagesHomeScreen()
            case 5:
                Text("dummy")
            default:
                Text("Home View")
            }
//        }
    }
}

struct CustomTabBar: View {
    @Binding var selectedTab: Int

    var body: some View {
        HStack {
            TabBarButton(index: 0, selectedTab: $selectedTab, title: "Home", icon: "ICP/home_outline")
            Spacer()
            TabBarButton(index: 1, selectedTab: $selectedTab, title: "", icon: "ICP/map_annotaion_marker_outline")
            Spacer()
            TabBarButton(index: 2, selectedTab: $selectedTab, title: "Home", icon: "ICP/reels_outline")
            Spacer()
            TabBarButton(index: 3, selectedTab: $selectedTab, title: "Home", icon: "ICP/calendar__outline")
            Spacer()
            TabBarButton(index: 4, selectedTab: $selectedTab, title: "Home", icon: "ICP/message_outline")
        }
        .frame(height: 72)
        .padding(.horizontal)
        .background(ColorSystem.background) // Tab bar background color
        .clipShape(.capsule)
        .padding(.bottom, 1)
        .padding(.horizontal, 23)
        
//        .clipShape(Capsule())  Rounded edges for the tab bar
//        .padding(.horizontal)
        
    }
}

struct TabBarButton: View {
    let index: Int
    @Binding var selectedTab: Int
    let title: String
    let icon: String

    var body: some View {
        VStack {
            Image(icon)
                .resizable()
                .renderingMode(.template)
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(selectedTab == index ? ColorSystem.primary : ColorSystem.heading)
                .frame(width:24, height:24)
//            Text(title)
//                .font(FontSystem.getFont(.p4, weight: .regular))
//                .foregroundColor(selectedTab == index ? ColorSystem.primary : ColorSystem.description)
        }
        .padding(.vertical, 10)
        .frame(maxWidth: .infinity)
        .onTapGesture {
            selectedTab = index
        }
    }
}


#Preview {
    TabsScreen()
}
