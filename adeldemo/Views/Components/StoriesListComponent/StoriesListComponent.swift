//
//  StoriesListComponent.swift
//  adeldemo
//
//  Created by Aman on 21/12/24.
//

import SwiftUI

struct StoriesListComponent : View {
    @State var navigateToStoriesDetails : Bool = false
    var body: some View {
        ScrollView (.horizontal) {
            HStack (spacing:12){
                ForEach(0..<20) { index in
                    profileCard()
                        .modifier(ViewTapGesture{
                            navigateToStoriesDetails = true
                        })
                }
            }
            .frame(height: 110)
            .navigationDestination(isPresented: $navigateToStoriesDetails){
                StoriesScreen()
            }
        }
        .scrollIndicators(.hidden)
        
    }
    
    func profileCard()-> some View {
        VStack {
            VStack {
                Image("model2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 61, height: 61)
                    .clipShape(RoundedRectangle(cornerRadius: 999))
                    .padding(0.5)
            }
            .frame(width: 72, height: 72)
            .overlay(
                RoundedRectangle(cornerRadius: 999)
                    .stroke(Color(hex:"B3FF78"), lineWidth: 2.5)
            )
            
            Text("Ruffles")
                .padding(.top, 6)
                .frame(height: 26)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
        }
        .frame(width: 72)
    }
    
}


#Preview {
    StoriesListComponent()
}
