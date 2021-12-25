//
//  ViewOutputDelegate.swift
//  Crypto
//
//  Created by Boris Bolshakov on 24.12.21.
//

import Foundation

protocol ViewOutputDelegate: AnyObject {
    func getData()
    func saveData()
    func getRandomCount()
}

