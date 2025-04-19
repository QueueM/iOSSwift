//
//  TapModifier.swift
//  adeldemo
//
//  Created by Aman on 03/12/24.
//

import SwiftUI

struct ViewTapGesture : ViewModifier {
    @State var scale : CGFloat = 1.0
    @State var lowerScale : CGFloat = 0.98
    @State var performActionWithDelay : Bool = true
    var action: (() -> Void)?

    func body(content: Content) -> some View {
        content
            .scaleEffect(scale)
            .contentShape(Rectangle())
            .onTapGesture {
                if !performActionWithDelay{
                    action?()
                }
                withAnimation(.interactiveSpring()) {
                    scale = lowerScale
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    if performActionWithDelay{
                        action?()
                    }
                    withAnimation(.interactiveSpring()) {
                        scale = 1.0
                    }
                }
            }
        
    }
}
