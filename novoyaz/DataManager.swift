
//  DataManager.swift
//  novoyaz
//  Created by Kisluhin Mihail on 28.01.23.

import SwiftUI
import Firebase
import FirebaseCore
//import FirebaseFirestore

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
                    let datas = document.data()
                    
                    let id = datas["id"] as? String ?? "123"
                    let wo = datas["word"] as? String ?? "123"
                    let me = datas["meanind"] as? String ?? "123"
                    let de = datas["description"] as? String ?? "123"
                    
                    let vocab = Word(id: id, word: wo, meaning: me, description: de)
                    self.words.append(vocab)
                }
            }
        }
    }
}
