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
                        Image("main")
                    }
                VocabularyView()
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
