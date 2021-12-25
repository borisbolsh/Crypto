//
//  ViewInputDelegate.swift
//  Crypto
//
//  Created by Boris Bolshakov on 24.12.21.
//

import Foundation

protocol ViewInputDelegate: AnyObject {
    func setupInitialState()
    func setupData(with testData: ([Crypto]))
    func displayData(i: Int)
}
