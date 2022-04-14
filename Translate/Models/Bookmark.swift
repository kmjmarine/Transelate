//
//  Bookmark.swift
//  Translate
//
//  Created by kmjmarine on 2022/04/15.
//

import Foundation

struct Bookmark: Codable {
    let sourceLanguage: Language
    let translatedLanguage: Language
    
    let sourceText: String
    let traslatedText: String
}
