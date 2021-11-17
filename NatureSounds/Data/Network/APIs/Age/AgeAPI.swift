//
//  AgeAPI.swift
//  BaseMVVM
//
//  Created by 김종권 on 2021/10/16.
//

import Foundation
import Alamofire

struct PredictAgeAPI {
    /// 이름과 패스워드로 로그인 + EventLogger 이용
    static func age(request: AgeRequest, completion: @escaping (_ succeed: Person?, _ failed: Error?) -> Void) {
        API.session.request(AgeTarget.predict(request), interceptor: NWRequestInterceptor())
            .responseDecodable { (response: AFDataResponse<AgeResponse>) in
                switch response.result {
                case .success(let response):
                    completion(response.toDomain, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }
}
