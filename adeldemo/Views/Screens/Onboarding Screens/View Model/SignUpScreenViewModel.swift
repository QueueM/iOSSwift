//
//  SignUpScreenViewModel.swift
//  adeldemo
//
//  Created by Aman on 07/01/25.
//

import Foundation

class SignUpScreenViewModel  : ObservableObject {
    @Published var isNavigateToVerifyOTPScreen: Bool = false
    @Published var isNavigateToSignInScreen: Bool = false
}
