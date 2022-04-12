//
//  Language.swift
//  Translate
//
//  Created by kmjmarine on 2022/04/13.
//

import Foundation

enum Language: CaseIterable {
    case ko
    case en
    case jp
    case cn
    
    var title: String {
        switch self {
        case .ko: return "한국어"
        case .en: return "영어"
        case .jp: return "일본어"
        case .cn: return "중국어"
        }
    }
}
