//
//  VocabularyView.swift
//  novoyaz
//
//  Created by Kisluhin Mihail on 25.01.23.
//

import SwiftUI

struct VocabularyView: View {
    @EnvironmentObject var dataManager: DataManager
    
    
    var body: some View {
        NavigationView{
            List(dataManager.words, id: \.id) { word in
                Text(word.meaning)
            }
        }
        
    }
}

struct VocabularyView_Previews: PreviewProvider {
    static var previews: some View {
        VocabularyView()
    }
}
