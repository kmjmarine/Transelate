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
        case .ko: return NSLocalizedString("Korean", comment: "한국어")
        case .en: return NSLocalizedString("English", comment: "영어")
        case .ja: return NSLocalizedString("Japanese", comment: "일본어")
        case .cn: return NSLocalizedString("Chinese", comment: "즁귝어")
        }
    }
    
    var languageCode: String {
        self.rawValue
    }
}
