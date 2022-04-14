//
//  Type.swift
//  Translate
//
//  Created by kmjmarine on 2022/04/15.
//

import UIKit

enum `Type` {
    case source
    case target
    
    var color: UIColor {
        switch self {
        case .source: return .label
        case .target: return .mainTintColor
        }
    }
}
