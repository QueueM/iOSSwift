//
//  SplashScreen.swift
//  adeldemo
//
//  Created by Aman on 07/01/25.
//

import SwiftUI
import Lottie
struct SplashScreen : View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        let animationName = colorScheme == .dark ? "splashScreenDarMode" : "splashScreen"
        VStack {
            LottieView(animationName: animationName, loopMode: .playOnce)
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 12)
                
        }
    }
}

#Preview {
    SplashScreen()
}
