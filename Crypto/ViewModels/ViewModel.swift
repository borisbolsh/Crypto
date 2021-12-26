//
//  ViewModel.swift
//  Crypto
//
//  Created by Boris Bolshakov on 25.12.21.
//

import Foundation

final class ViewModel {
    
    public let cryptoName = Dynamic("")
    public let acronymName = Dynamic("")
    public let valueName = Dynamic("")

    private var count = 0
    private var testData = Crypto.testData
    private let model = Crypto.testData
    
    init() {
        self.displayData(i: count)
    }
    
    public func getCryptoButtonPressed() {
        let randomCount = Int.random(in: 0 ..< testData.count)
        self.displayData(i: randomCount)
    }
    
    private func displayData(i: Int) {
        if testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
            cryptoName.value = testData[i].name
            acronymName.value = testData[i].acronym
            valueName.value = String(testData[i].value)

        } else {
            print("Sorry, no data")
        }
    }
    
}
