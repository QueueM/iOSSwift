//
//  MainSearchScreen.swift
//  adeldemo
//
//  Created by Aman on 21/12/24.
//

import SwiftUI

struct MainSearchScreen : View {
    @Environment(\.dismiss) private var dismiss
    @StateObject var vm : MainSearchScreenViewModel = MainSearchScreenViewModel()
    var body: some View {
        VStack {
            searchView
                .padding(.horizontal, 15)
            ScrollView {
                tabView
                if vm.searchText.replacingOccurrences(of: " ", with: "") == "" {
                    topSpecialist
                        .padding(.top, 15)
                        .padding(.horizontal, 15)
                }
                shopsList
                    .padding(.top, 20)
                    .padding(.horizontal, 15)
//                Spacer()
            }
            .scrollIndicators(.hidden)
            .navigationBarBackButtonHidden()
        }
    }
    
    var searchView : some View {
        HStack {
            Image("ICP/cheveron_left")
                .resizable()
                .renderingMode(.template)
                .foregroundStyle(ColorSystem.heading)
                .frame(width: 20, height: 20)
                .modifier(ViewTapGesture(){
                    dismiss()
                })
//                .background(.red)
//                .tint(ColorSystem.heading)
                
            
            HStack {
                Image("ICP/magnifying_glass_outline")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(ColorSystem.heading)
                    .frame(width: 20, height: 20)
                    .padding(.leading, 20)
                TextField("Search", text: $vm.searchText)
            }
            .frame(maxHeight: .infinity)
            .frame(maxWidth: .infinity)
            .overlay(
                RoundedRectangle(cornerRadius: 999)
                    .stroke(ColorSystem.stroke, lineWidth: 0.5)
            )
        }
        .frame(height: 52)
    }
    var tabView : some View {
        CustomTopTabView(
            preset:.none,
            tabsList: [
                CustomTopTabView.DataModel(titile: "About", id: 0, view: AnyView(VStack{})),
                CustomTopTabView.DataModel(titile: "Services", id: 1, view:
                                            AnyView(VStack{})),
                CustomTopTabView.DataModel(titile: "Package", id: 2, view: AnyView(VStack{})),
                CustomTopTabView.DataModel(titile: "Gallery", id: 3, view: AnyView(VStack{}))
            ]
        )
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
        VStack (spacing:10) {
            ForEach(0..<10){ index in
                ShopDetailsCard2Component()
            }
        }
    }
}

#Preview {
    MainSearchScreen()
}
