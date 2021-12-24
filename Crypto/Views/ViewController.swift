//
//  ViewController.swift
//  Crypto
//
//  Created by Boris Bolshakov on 24.12.21.
//

import UIKit

final class ViewController: UIViewController {

    private let nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Name label"
        label.font = .systemFont(ofSize: 18, weight: .regular)
        return label
    }()
    
    private let acronymLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Acronym label"
        label.font = .systemFont(ofSize: 15, weight: .regular)
        return label
    }()
    
    private let valueLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Value label"
        label.font = .systemFont(ofSize: 15, weight: .regular)
        return label
    }()
    
    private let getCryptoButton: UIButton = {
        let button = UIButton()
        button.tintColor = .label
        button.setTitle("Test Button", for: .normal)
        return button
    }()
    
    private lazy var cryptoStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [nameLabel, acronymLabel, valueLabel, getCryptoButton])
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemBackground
        configureUI()
    }


    private func configureUI() {
        
        view.addSubview(cryptoStackView)
        cryptoStackView.addSubview(nameLabel)
        cryptoStackView.addSubview(acronymLabel)
        cryptoStackView.addSubview(valueLabel)
        cryptoStackView.addSubview(getCryptoButton)
        
        cryptoStackView.frame = CGRect(
            x: 20,
            y: 20,
            width: view.width - 30,
            height: cryptoStackView.height
       )
        
        
    }
    
    
}

