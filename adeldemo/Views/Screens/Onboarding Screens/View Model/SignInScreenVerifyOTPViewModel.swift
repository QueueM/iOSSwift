//
//  SignInScreenVerifyOTPViewModel.swift
//  adeldemo
//
//  Created by Aman on 07/01/25.
//

import Foundation




class SignInScreenVerifyOTPViewModel  : ObservableObject {
    @Published var isNavigateToHomeScreen: Bool = false
    @Published var optValue : String = ""
}
