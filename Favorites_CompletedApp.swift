//
// Favorites_CompletedApp.swift : Favorites_Completed
//
// Copyright © 2025 Auburn University.
// All Rights Reserved.
//
// Altered for CPSC-5340 by Matt Erdahl


import SwiftUI

@main
struct FavoritesApp: App {
    
    @StateObject private var favoritesViewModel = FavoritesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(favoritesViewModel)
        }
    }
}
