//
//  DataManager.swift
//  novoyaz
//
//  Created by Kisluhin Mihail on 28.01.23.
//

import SwiftUI
import Firebase

class  DataManager: ObservableObject {
    @Published var words: [Word] = []
    
    init() {
        fetchWords()
    }
    
    func fetchWords() {
        words.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("Words")
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["id"] as? Int ?? 0
                    let word = data["word"] as? String ?? ""
                    let mean = data["meanind"] as? String ?? ""
                    let desc = data["description"] as? String ?? ""
                    
                    let vocab = Word(id: id, word: word, meaning: mean, description: desc)
                    self.words.append(vocab)
                }
            }
        }
    }
}
