//
//  ColorSystem.swift
//  adeldemo
//
//  Created by Aman on 10/12/24.
//

import SwiftUI



struct ColorSystem {
    static let primary = Color(UIColor { traitCollection in
        return traitCollection.userInterfaceStyle == .dark ? UIColor(hex: Dark.primary.rawValue) : UIColor(hex: Light.primary.rawValue)
    })
    static let heading = Color(UIColor { traitCollection in
        return traitCollection.userInterfaceStyle == .dark ? UIColor(hex: Dark.heading.rawValue) : UIColor(hex: Light.heading.rawValue)
    })
    static let description = Color(UIColor { traitCollection in
        return traitCollection.userInterfaceStyle == .dark ? UIColor(hex: Dark.description.rawValue) : UIColor(hex: Light.description.rawValue)
    })
    static let stroke = Color(UIColor { traitCollection in
        return traitCollection.userInterfaceStyle == .dark ? UIColor(hex: Dark.stroke.rawValue) : UIColor(hex: Light.stroke.rawValue)
    })
    static let background2 = Color(UIColor { traitCollection in
        return traitCollection.userInterfaceStyle == .dark ? UIColor(hex: Dark.background2.rawValue) : UIColor(hex: Light.background2.rawValue)
    })
    static let background = Color(UIColor { traitCollection in
        return traitCollection.userInterfaceStyle == .dark ? UIColor(hex: Dark.background.rawValue) : UIColor(hex: Light.background.rawValue)
    })
    static let error = Color(UIColor { traitCollection in
        return UIColor(hex: "E80000")
    })
    enum Light : String {
        var color : Color {
            get {
                self.rawValue.color
            }
        }
        case primary = "B3FF78"
        case heading = "000000"
        case description = "949494"
        case stroke = "C0C0C0"
        case background2 = "F8F8F8"
        case background = "FFFFFF"
    }
    enum Dark : String {
        var color : Color {
            get {
                self.rawValue.color
            }
        }
        case primary = "B3FF78"
        case heading = "FFFFFF"
        case description = "959595"
        case stroke = "5B5B5B"
        case background2 = "0F0F0F"
        case background = "000000"
    }
}
