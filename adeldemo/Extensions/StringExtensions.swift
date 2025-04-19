//
//  StringExtensions.swift
//  adeldemo
//
//  Created by Aman on 11/12/24.
//

import SwiftUI


extension String {
    var color : Color {
        get {
            return Color(hex: self)
        }
    }
}
