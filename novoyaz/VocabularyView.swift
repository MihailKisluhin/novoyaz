//
//  VocabularyView.swift
//  novoyaz
//
//  Created by Kisluhin Mihail on 25.01.23.
//

import SwiftUI
import Firebase
import FirebaseCore

struct VocabularyView: View {
    
    @EnvironmentObject var dataManager: DataManager
    
    var body: some View {

        NavigationStack {
            List (dataManager.words, id: \.id) { word in
                VStack (alignment: .leading) {
                    Text("\(word.word) - знач. \((word.meaning))")
                        .bold
                    Text("Proverka")
                    
                }
            }
            .navigationTitle("Словарь")
            .listStyle(.plain)
        }
    }
}

struct VocabularyView_Previews: PreviewProvider {
    static var previews: some View {
        VocabularyView()
            .environmentObject(DataManager())
    
    }
}
