//
//  CommonCircularButtonComponent.swift
//  adeldemo
//
//  Created by Aman on 10/12/24.
//

import SwiftUI


struct CommonCircularButtonComponent: View {
    var imageName : String
    var tint : Color = .white
    var clickedCallback : (()->Void)
    
    enum images : String{
        case magniFyingGlassOutline = "ICP/magnifying_glass_outline"
        case cheveronLeft = "ICP/cheveron_left"
    }
    
    var body: some View {
        VStack {
            Image(imageName)
                .renderingMode(.template)
                .scaledToFit()
                .foregroundStyle(tint)
        }
        .frame(width: 44, height: 44)
        .overlay(
            RoundedRectangle(cornerRadius: 999)
                .stroke(tint, lineWidth: 0.5)
        )
        .modifier(ViewTapGesture(lowerScale: 0.95){
            clickedCallback()
        })
    }
    
    init(imageName: String, tint: Color, clickedCallback: @escaping () -> Void) {
        self.imageName = imageName
        self.tint = tint
        self.clickedCallback = clickedCallback
    }
    init(image: images, tint: Color, clickedCallback: @escaping () -> Void) {
        self.imageName = image.rawValue
        self.tint = tint
        self.clickedCallback = clickedCallback
    }
}
