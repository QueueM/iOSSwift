//
//  MessagesHomeScreen.swift
//  adeldemo
//
//  Created by Aman on 30/12/24.
//

import SwiftUI

struct MessagesHomeScreen : View {
    @StateObject var vm = MessagesHomeScreenViewModel()
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack{
            navigationView
                .frame(height: 44)
                .padding(.horizontal, 15)
            CustomTopTabView(
                tabsList: [
                    CustomTopTabView.DataModel(titile: "Messages", id: 0, view: AnyView(messagesTabView)),
                    CustomTopTabView.DataModel(titile: "Unread", id: 1, view: AnyView(unreadTAbView))
//                    CustomTopTabView.DataModel(titile: "Group", id: 2, view: AnyView(groupTabView)),
//                    CustomTopTabView.DataModel(titile: "Calls", id: 3, view: AnyView(unreadTAbView))
                ]
            )
            .frame(maxHeight: .infinity, alignment:.top)
//            CustomTopTabView(
//                tabsList: [
//                    CustomTopTabView.DataModel(titile: "Messages", id: 0, view: AnyView(unreadTAbView)),
//                    CustomTopTabView.DataModel(titile: "Unread", id: 1, view:AnyView(Text("second"))),
//                    CustomTopTabView.DataModel(titile: "Group", id: 2, view:AnyView(unreadTAbView)),
//                    CustomTopTabView.DataModel(titile: "Calls", id: 3, view: AnyView(messagesTabView))
//                    
//                    
//                ]
//            )
            
        }
        .navigationBarHidden(true)
        .navigationDestination(isPresented: $vm.isNavigateToChatRooomScreen){
            PersonalChatRoomScreen()
        }
    }
    
    var navigationView : some View {
        HStack {
//            CommonCircularButtonComponent(image: .cheveronLeft, tint: ColorSystem.heading, clickedCallback: {})
//                .frame(width: 44, height: 44)
            Text("Messages")
                .font(FontSystem.getFont(.p1, weight: .bold))
                .foregroundStyle(ColorSystem.heading)
            Spacer()
            CommonCircularButtonComponent(image: .magniFyingGlassOutline, tint: ColorSystem.heading, clickedCallback: {})
                .frame(width: 44, height: 44)
        }
    }
    var messagesTabView : some View {
        VStack {
            ScrollView {
                ForEach (0..<20, id: \.self) { index in
                    getMessageCellView()
                        .modifier(ViewTapGesture(lowerScale: 1.0){
                            vm.isNavigateToChatRooomScreen = true
                        })
                }
            }
            .scrollIndicators(.hidden)
            .padding(.top, 5)
        }
    }
    var unreadTAbView : some View {
//        ScrollView {
//            ForEach (0..<5) { index in
        VStack {
            ScrollView {
                ForEach (0..<5, id: \.self) { index in
                    getMessageCellView()
                }
            }
            .scrollIndicators(.hidden)
        }
        .padding(.top, 5)
//            }
//        }
    }
    var groupTabView : some View {
        ScrollView {
            ForEach (0..<5, id: \.self) { index in
                groupCardView
            }
        }
    }
    var groupCardView : some View {
            HStack {
                Image("model1")
                    .resizable()
                    .frame(width: 66, height: 66)
                    .clipShape(.circle)
                VStack {
                    HStack {
                        Text("glamour Heaven")
                            .font(FontSystem.getFont(.p2, weight: .bold))
                            .foregroundStyle(ColorSystem.heading)
                        Spacer()
                        Text("3:50 pm")
                            .font(FontSystem.getFont(.p3, weight: .regular))
                            .foregroundStyle(ColorSystem.description)
                    }
                    .frame(maxWidth: .infinity, alignment:.leading)
                    HStack {
                        Text("Bessie Cooper: Sed ut perspiciatis unde omnis iste natus error sit voluptatem")
                            .font(FontSystem.getFont(.p3, weight: .regular))
                            .foregroundStyle(ColorSystem.description)
                            .lineLimit(1)
                            .frame(height: 17)
                        Spacer()
                        Text("1")
                            .font(FontSystem.getFont(.p4, weight: .regular))
                            .foregroundStyle(ColorSystem.background)
                            .padding(.horizontal, 7)
                            .padding(.vertical, 2)
                            .background(.red)
                            .clipShape(.circle)
                    }
                }
                .frame(maxWidth: .infinity, alignment:.leading)
        }
    }
    func getMessageCellView()-> some View {
        HStack {
            ZStack (alignment:.bottomTrailing) {
                Image("model1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 44, height: 44)
                    .clipShape(.circle)
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 8, height: 8)
                    .clipShape(.circle)
                    .padding(.trailing, 2)
                    .padding(.bottom, 2)
                    .overlay(
                        RoundedRectangle(cornerRadius: 999)
                            .stroke(ColorSystem.background, lineWidth: 2)
                    )
            }
            VStack (alignment:.leading) {
                HStack {
                    Text("Bessie Cooper")
                        .font(FontSystem.getFont(.p2, weight: .bold))
                        .foregroundStyle(ColorSystem.heading)
//                        .frame(maxWidth: .infinity)
                    Spacer()
                    Text("3:50 pm")
                        .font(FontSystem.getFont(.p3, weight: .regular))
                        .foregroundStyle(ColorSystem.description)
                        
                }
                .frame(maxWidth: .infinity, alignment:.leading)
                HStack {
                    Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem")
                        .font(FontSystem.getFont(.p3, weight: .regular))
                        .foregroundStyle(ColorSystem.description)
                        .frame(maxWidth: .infinity)
                        .lineLimit(1)
                    Spacer()
                    Text("1")
                        .font(FontSystem.getFont(.p4, weight: .regular))
                        .foregroundStyle(ColorSystem.background)
                        .padding(.horizontal, 7)
                        .padding(.vertical, 2)
                        .background(.red)
                        .clipShape(.circle)
                }
            }
            .frame(maxWidth: .infinity)
            .multilineTextAlignment(.leading)
        }
    }
}

struct ChatCardView: View {
  var body: some View {
    HStack(spacing: 10) {
      ZStack() {
        Ellipse()
          .foregroundColor(.clear)
          .frame(width: 44, height: 44)
          .background(
            AsyncImage(url: URL(string: "https://via.placeholder.com/44x44"))
          )
          .offset(x: 0, y: 0)
        Ellipse()
          .foregroundColor(.clear)
          .frame(width: 8, height: 8)
          .background(Color(red: 0.08, green: 0.69, blue: 0.03))
          .overlay(
            Ellipse()
              .inset(by: -0.75)
              .stroke(.white, lineWidth: 0.75)
          )
          .offset(x: 16, y: 16)
      }
      .frame(width: 44, height: 44)
      VStack(alignment: .leading, spacing: 4) {
        Text("Bessie Cooper")
          .font(Font.custom("Manrope", size: 14).weight(.bold))
          .lineSpacing(19.60)
          .foregroundColor(.black)
        Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem")
          .font(Font.custom("Manrope", size: 12))
          .lineSpacing(16.80)
          .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
      }
      VStack(alignment: .trailing, spacing: 4) {
        Text("3:50 pm")
          .font(Font.custom("Manrope", size: 12))
          .lineSpacing(16.80)
          .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
        ZStack() {
          Ellipse()
            .foregroundColor(.clear)
            .frame(width: 18, height: 18)
            .background(Color(red: 0.91, green: 0, blue: 0))
            .cornerRadius(20)
            .offset(x: 0, y: 0)
          Text("1")
            .font(Font.custom("Manrope", size: 10))
            .lineSpacing(14)
            .foregroundColor(.white)
            .offset(x: -0.20, y: -0.35)
        }
        .frame(width: 18, height: 18)
      }
    }
    .frame(width: 345, height: 44);
  }
}

#Preview {
    MessagesHomeScreen()
}


struct CustomTopTabView: View {
    @State private var selectedTab = 0
    
    enum Presets {
        case none
        case pill
    }
    var preset : Presets = .none
    var tabsList : [DataModel]
    struct DataModel : Identifiable{
        let titile : String
        let id : Int
        let view : AnyView
    }
    func getTabView(title:String, isSelected:Bool) -> some View {
        return VStack(alignment:.leading){
            switch preset {
            case .none:
                    Text(title)
                        .font(.system(size: 14))
                        .foregroundStyle(isSelected ? ColorSystem.heading : ColorSystem.description)
                    
             
            case .pill:
                
                Text(title)
                    .font(.system(size: 14))
                    .foregroundStyle({
                        switch preset {
                        case .none:
                            return isSelected ? ColorSystem.heading : ColorSystem.description
                        case .pill:
                            return isSelected ? ColorSystem.background : ColorSystem.description
                        }
                        
                    }())
                    .padding(.horizontal, {
                        switch preset {
                        case .none:
                            return 0
                        case .pill:
                            return isSelected ? 20 : 10
                        }
                    }())
                    .padding(.vertical, {
                        switch preset {
                        case .none:
                            return 0
                        case .pill:
                            return isSelected ? 10 : 0
                        }
                    }())
                    .background({
                        if isSelected {
                            return ColorSystem.heading
                        }
                        return Color.clear
                    }()
                    )
                    .clipShape(.capsule)
                
                
                
            }
        }
        .frame(maxWidth: .infinity)
        
    }
    var body: some View {
        VStack {
            // Custom Tab Bar
            ScrollView (.horizontal){
                HStack {
                    ForEach(tabsList) { list in
                        getTabView(title: list.titile, isSelected:selectedTab == list.id)
                            .background(.white.opacity(0.001))
                            .modifier(ViewTapGesture(lowerScale: 0.95){
                                selectedTab = list.id
                            })
                            .padding(.bottom, {
                                switch preset {
                                case .none:
                                    return 0
                                case .pill:
                                    return 0
                                }
                            }())
                        //                        .onTapGesture {
                        //                            selectedTab = list.id
                        //                        }
                    }
                }
                .frame(minWidth: screenWidth-15)
            }
            .scrollIndicators(.hidden)
//            .frame(minWidth: screenWidth)
            if preset == .none {
                DashedLine()
                    .stroke(style: StrokeStyle(lineWidth: 0.5, dash: [10, 10])) // Default dash length
                    .foregroundStyle(Color(hex: "959595"))
                    .frame(height: 1)
                    .padding(.vertical, 10)
            }
            // Content for each tab
            VStack {
                tabsList[selectedTab].view
            }
            .animation(.easeInOut, value: selectedTab)
        }
        .padding()
    }
}
