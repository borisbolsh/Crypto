//
//  RandomCount.swift
//  Crypto
//
//  Created by Boris Bolshakov on 25.12.21.
//

import Foundation

final class RandomCount {
    static func getRandomCount(data: [Crypto]) -> Int {
        let randomCount = Int.random(in: 0 ..< data.count)
        return randomCount
    }
}
