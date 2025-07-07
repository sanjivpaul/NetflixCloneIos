//
//  CollectionViewTableViewCell.swift
//  NetflixClone
//
//  Created by V1 Macbook Air on 07/07/2025.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {

//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
    static let identifier = "CollectionViewTableViewCell"

    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemPink
    }
    
    required init?(coder:NSCoder) {
        fatalError()
    }
    
    

}
