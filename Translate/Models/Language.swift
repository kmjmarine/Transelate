//
//  Language.swift
//  Translate
//
//  Created by kmjmarine on 2022/04/13.
//

import Foundation

enum Language: String, CaseIterable, Codable {
    case ko
    case en
    case ja
    case cn = "zh-CN"
    
    var title: String {
        switch self {
        case .ko: return "한국어"
        case .en: return "영어"
        case .ja: return "일본어"
        case .cn: return "중국어"
        }
    }
    
    var languageCode: String {
        self.rawValue
    }
}
