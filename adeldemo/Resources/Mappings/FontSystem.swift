//
//  FontSystem.swift
//  adeldemo
//
//  Created by Aman on 11/12/24.
//

import SwiftUI

struct FontSystem {
    enum Sizes : Double{
        case h1 = 28.0
        case h2 = 24.0
        case h3 = 22.0
        case h4 = 20.0
        case h5 = 18.0
        case p1 = 16.0
        case p2 = 14.0
        case p3 = 12.0
        case p4 = 10.0
        case p5 = 8.0
    }
    
    enum weights : Double {
        case bold = 700
        case semiBold = 600
        case medium = 500
        case regular = 400
    }
    
    static func getFont(_ size:Sizes, weight:Font.Weight?)->Font{
        return Font.system(size: size.rawValue, weight: weight)
    }
    static func getFont(_ size:Double, weight:Font.Weight?)->Font{
        return Font.system(size: size, weight: weight)
    }
}
