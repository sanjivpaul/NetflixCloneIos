//
//  TitleCollectionViewCell.swift
//  NetflixClone
//
//  Created by Sanjiv on 13/07/25.
//


//this file is cocoa touched class file
import UIKit
import SDWebImage

class TitleCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "TitleCollectionViewCell"
    
    private let posterImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    
    //    initialization first
    override init(frame: CGRect){
        super.init(frame: frame)
        contentView.addSubview(posterImageView)
    }
    
    //    initialization second
    required init(coder:NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        posterImageView.frame = contentView.bounds
    }
    
    public func configure(with model: String){
        guard let url = URL(string: model) else {return}
        posterImageView.sd_setImage(with: url, completed: nil)
    }
    
}
