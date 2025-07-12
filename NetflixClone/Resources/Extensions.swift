//
//  Extensions.swift
//  NetflixClone
//
//  Created by Sanjiv on 12/07/25.
//

import Foundation

extension String {
    func capitalizedFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
    
}
