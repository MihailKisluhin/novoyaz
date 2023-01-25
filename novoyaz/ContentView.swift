//
//  ContentView.swift
//  novoyaz
//
//  Created by Kisluhin Mihail on 23.01.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                HomeView()
                    .tabItem {
                        Text("Главная")
                    }
                VocabularyView()
                    .tabItem {
                        Text("Словарь")
                    }
                ProfileView()
                    .tabItem {
                        Text("Автор")
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
