//
//  ViewController.swift
//  Crypto
//
//  Created by Boris Bolshakov on 24.12.21.
//

import UIKit

final class ViewController: UIViewController {
    
    private var count = 0
    private var testData: [Crypto] = []
    private let model = Crypto.testData
    
    // MARK: - UI
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Name label"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18, weight: .regular)
        return label
    }()
    
    private let acronymLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Acronym label"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 15, weight: .regular)
        return label
    }()
    
    private let valueLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Value label"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 15, weight: .regular)
        return label
    }()
    
    private let getCryptoButton: UIButton = {
        let button = UIButton()
        button.setTitle("Random crypto", for: .normal)
        button.backgroundColor = .link
        button.layer.cornerRadius = 8.0
        
        return button
    }()
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        view.addSubview(nameLabel)
        view.addSubview(acronymLabel)
        view.addSubview(valueLabel)
        view.addSubview(getCryptoButton)
        
        title = "Crypto"
        
        getCryptoButton.addTarget(self, action: #selector(didTapGetCrypto), for: .touchUpInside)
        
        setupData(with: model)
        setupInitialState()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        nameLabel.frame = CGRect(
            x: 16,
            y: (navigationController?.navigationBar.frame.height ?? 0) + 32,
            width: view.width - 32,
            height: 50
        )
        
        acronymLabel.frame = CGRect(
            x: 16,
            y: nameLabel.bottom + 4,
            width: view.width - 32,
            height: 30
        )
        
        valueLabel.frame = CGRect(
            x: 16,
            y: acronymLabel.bottom + 4,
            width: view.width - 32,
            height: 30
        )
        
        getCryptoButton.frame = CGRect(
            x: 16,
            y: valueLabel.bottom + 16,
            width: view.width - 32,
            height: 44
        )
    }
    
    private func setupInitialState() {
        displayData(i: count)
    }
    
    private func setupData(with testData: ([Crypto])) {
        self.testData = testData
    }
    
    private func displayData(i: Int) {
        if testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
            nameLabel.text      = testData[i].name
            acronymLabel.text    = testData[i].acronym
            valueLabel.text     = String(testData[i].value)
        } else {
            print("Sorry, no data")
        }
    }
    
    @objc private func didTapGetCrypto () {
        displayData(i: RandomCount.getRandomCount(data: testData))
    }
    
}

