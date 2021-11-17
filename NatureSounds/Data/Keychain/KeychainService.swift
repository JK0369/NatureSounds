//
//  KeychainService.swift
//  BaseMVVM
//
//  Created by 김종권 on 2021/10/16.
//

import Foundation


protocol KeychainServiceable {
    var accessToken: String? { get set }
    var refreshToken: String? { get set }
}

class KeychainService: KeychainServiceable {
    static let shared = KeychainService()
    private init() {}

    struct Key {
        static let accessToken = "accessToken"
        static let refreshToken = "refreshToken"
    }

    private let keychainAccess = KeychainAccessImpl()

    var accessToken: String? {
        get { keychainAccess.get(Key.accessToken) }
        set {
            if accessToken != nil {
                keychainAccess.save(Key.accessToken, newValue ?? "")
            } else {
                keychainAccess.remove(Key.accessToken)
            }
        }
    }
    var refreshToken: String? {
        get { keychainAccess.get(Key.refreshToken) }
        set {
            if refreshToken != nil {
                keychainAccess.save(Key.refreshToken, newValue ?? "")
            } else {
                keychainAccess.remove(Key.refreshToken)
            }
        }
    }
}
