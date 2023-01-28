//
//  VocabularyView.swift
//  novoyaz
//
//  Created by Kisluhin Mihail on 25.01.23.
//

import SwiftUI
import Firebase

struct VocabularyView: View {
//    @StateObject var dataManager = DataManager()
//    @EnvironmentObject var dataManager: DataManager
//
//    init() {
//        FirebaseApp.configure()
//    }
//
    var body: some View {
        NavigationView {
            List(dataManager.words, id: \.id) { vocab in
                Text(vocab.meaning)
                Text(vocab.description)
            }
            .navigationTitle("Словарь")
        }
        
    }
}

struct VocabularyView_Previews: PreviewProvider {
    static var previews: some View {
        VocabularyView()
           .environmentObject(DataManager())
    }
}
