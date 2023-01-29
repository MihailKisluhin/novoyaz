//
//  novoyazApp.swift
//  novoyaz
//
//  Created by Kisluhin Mihail on 23.01.23.
//

import SwiftUI
import Firebase
import FirebaseCore
//import FirebaseFirestore


@main
struct novoyazApp: App {

    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
           ContentView()
           
        }
    }
}

