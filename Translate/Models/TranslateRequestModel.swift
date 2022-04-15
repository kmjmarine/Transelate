//
//  TranslateRequestModel.swift
//  Translate
//
//  Created by kmjmarine on 2022/04/15.
//

import Foundation

struct TranslateRequestModel: Codable {
    let source: String
    let target: String
    let text: String
}
