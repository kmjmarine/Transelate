//
//  TranslatorManager.swift
//  Translate
//
//  Created by kmjmarine on 2022/04/15.
//

import Alamofire
import Foundation

struct TranslatorManager {
    var sourceLanguage: Language = .ko
    var targetLanguage: Language = .en
    
    func translate(
        from text: String,
        completionHandler: @escaping (String) -> Void
    ) {
        guard let url = URL(string: "https://openapi.naver.com/v1/papago/n2mt") else { return }
        
        //url이 존재함을 전제로 함
        let requestModel = TranslateRequestModel(
            source: sourceLanguage.languageCode,
            target: targetLanguage.languageCode,
            text: text
        )
        
        let headers: HTTPHeaders = [
            "X-Naver-Client-Id": "renCApYakTk_w6qoeoSn",
            "X-Naver-Client-Secret": "ZZSXpJLDaY"
        ]
        
        AF
            .request(url, method: .post, parameters: requestModel, headers: headers)
            .responseDecodable(of: TranslateResponseModel.self) { response in
                switch response.result {
                case .success(let result):
                    completionHandler(result.translatedText)
                case.failure(let error):
                    print(error.localizedDescription)
                }
            }
            .resume()
    }
}
