//
//  Cosplay_CentralApp.swift
//  Cosplay_Central
//
//  Created by lecturer on 2023/11/03.
//

import SwiftUI

@main
struct CosplayCentralApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .preferredColorScheme(isDarkMode ? .dark : .light)
            }
        }
    }
}
