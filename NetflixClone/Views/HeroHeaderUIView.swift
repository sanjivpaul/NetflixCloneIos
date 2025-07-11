//
//  HeroHeaderUIView.swift
//  NetflixClone
//
//  Created by V1 Macbook Air on 08/07/2025.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    private let downloadButton: UIButton = {
        let button = UIButton()
        button.setTitle("Download", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor // here you can use system color currently by default i have set to white
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()
    
    private let playButton: UIButton = {
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()
    
    private let heroImageView:UIImageView = {
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill // aspect fill so full width covers
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "heroImage")
        
        return imageView
    }()
    
//    gradient in hero image
    private func addGradient(){
        let gradientLayer = CAGradientLayer()
//        add two colors here
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
        
    }
    
    private func applyConstraints() {
        let playButtonConstrains = [
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 70), // left margin
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20), // bottom margin on button
            playButton.widthAnchor.constraint(equalToConstant: 120) //width of button
        ]
        
        let downloadButtonConstrains = [
            downloadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -70), // left margin
            downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20), // bottom margin on button
            downloadButton.widthAnchor.constraint(equalToConstant: 120) //width of button
        ]
        
        NSLayoutConstraint.activate(playButtonConstrains)
        NSLayoutConstraint.activate(downloadButtonConstrains)
        
    }

//    initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addGradient()
        addSubview(playButton)
        addSubview(downloadButton)
        applyConstraints()
    }
    

    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    
}
