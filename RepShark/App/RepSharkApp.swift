//
//  RepSharkApp.swift
//  RepShark
//
//  Created by Alexej K on 14/07/2025.
//

import SwiftUI

@main
struct RepSharkApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
