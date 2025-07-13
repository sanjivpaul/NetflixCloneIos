//
//  TitleCollectionViewCell.swift
//  NetflixClone
//
//  Created by Sanjiv on 13/07/25.
//


//this file is cocoa touched class file
import UIKit

class TitleCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "TitleCollectionViewCell"
    
    
//    initialization first
    override init(frame:CGRect){
        super.init(frame: frame)
    }
    
    //    initialization second
    required init(coder:NSCoder) {
        fatalError()
    }
    
}
