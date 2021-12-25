//
//  Crypto.swift
//  Crypto
//
//  Created by Boris Bolshakov on 24.12.21.
//

import Foundation

struct Crypto {
    var name: String
    var acronym: String
    var value: Int
}

extension Crypto {
    static var testData = [
        Crypto(name: "Bitcion", acronym: "BTC", value: 55000),
        Crypto(name: "Etherium", acronym: "ETH", value: 35000),
        Crypto(name: "Ripple", acronym: "XRP", value: 999),
        Crypto(name: "Stellar", acronym: "XLM", value: 555),
        Crypto(name: "Algorand", acronym: "ALGO", value: 333)
    ]
}

