//
//  ContentView.swift
//  adeldemo
//
//  Created by Aman on 03/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var isSplashActive : Bool = true
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
//        DemoScreenView()
//        SignInScreenVerifyOTPView()
        if isSplashActive {
            SplashScreen()
                .ignoresSafeArea(.all)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.25) {
                        withAnimation {
                            isSplashActive = false
                        }
                    }
                }
        }
        else {
            NavigationStack {
//                TabsScreen()
                WalkThroughScreenView()
                
            }
        }
//        ReelsHomeScreen()
    }
}

#Preview {
    ContentView()
        .noPadding()
}


struct NoPaddingModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.padding(0)
    }
}

extension View {
    func noPadding() -> some View {
        self.modifier(NoPaddingModifier())
    }
}
