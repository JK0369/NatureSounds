//
//  AgeResponse.swift
//  BaseMVVM
//
//  Created by 김종권 on 2021/10/16.
//

import Foundation

struct AgeResponse: Decodable {
    let name: String
    let age: Int
    let count: Int
}

extension AgeResponse {
    var toDomain: Person {
        return Person(name: name, age: age)
    }
}
