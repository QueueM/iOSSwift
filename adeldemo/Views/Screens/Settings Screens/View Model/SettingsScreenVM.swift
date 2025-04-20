//
//  SettingsScreenAM.swift
//  adeldemo
//
//  Created by Aman on 08/01/25.
//

import Foundation

class SettingsScreenVM  : ObservableObject {
    @Published var isNavigateToEditProfileDetails: Bool = false
    @Published var isNavigateToFavourite: Bool = false
    @Published var isNavigateToInviteFriends: Bool = false
    @Published var isNavigateToFAQs: Bool = false
    @Published var isNavigateToAboutUs: Bool = false
    @Published var isNavigateToLogout: Bool = false
    @Published var isNavigateNotification: Bool = false
}
