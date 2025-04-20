//
//  HomeScreenViewModel.swift
//  adeldemo
//
//  Created by Aman on 21/12/24.
//

import Foundation


class HomeScreenViewModel  : ObservableObject {
    @Published var isNavigateToSearchPage : Bool = false
    @Published var isNavigateToShopDetailsScreen : Bool = false
    @Published var isNavigateToSettings : Bool = false
    @Published var isNavigateToStoriesScreen : Bool = false
}
