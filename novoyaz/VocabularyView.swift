//
//  VocabularyView.swift
//  novoyaz
//
//  Created by Kisluhin Mihail on 25.01.23.
//

import SwiftUI
import Firebase
import FirebaseCore
//import FirebaseFirestore


struct VocabularyView: View {
    
    @EnvironmentObject var dataManager: DataManager
    
    var body: some View {
        
//        VStack {
//            ForEach(dataManager.words, id: \.id) { word in
//                Text(word.meaning)
//            }
//        }
        
        
        NavigationView {
           List (dataManager.words, id: \.id) { word in
                            Text(word.meaning)
                       Text(word.description)
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
