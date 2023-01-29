//
//  ContentView.swift
//  novoyaz
//
//  Created by Kisluhin Mihail on 23.01.23.
//

import SwiftUI
import Firebase
import FirebaseCore
//import FirebaseFirestore

struct ContentView: View {
    @StateObject var dataManager = DataManager()
    
    var body: some View {
        VStack {
            TabView {
                HomeView()
                    .tabItem {
                        Text("Главная")
                        Image("main")
                    }
                VocabularyView()
                    .environmentObject(dataManager)
                    .tabItem {
                        Text("Словарь")
                        Image("book")
                    }
                ProfileView()
                    .tabItem {
                        Text("Автор")
                        Image("autor")
                    }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
