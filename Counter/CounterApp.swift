//
//  CounterApp.swift
//  Counter
//
//  Created by KAWASHIMA Yoshiyuki on 2021/02/22.
//

import SwiftUI
import Firebase

@main
struct CounterApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView(count: 0)
        }
    }
}
