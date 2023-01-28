//
//  Word.swift
//  novoyaz
//
//  Created by Kisluhin Mihail on 28.01.23.
//

import Foundation

struct Word: Identifiable, Codable {
    var id: String
    var word: String
    var meaning: String
    var description: String
}
