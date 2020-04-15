//
//  String.swift
//  
//
//  Created by Witt, Robert on 27.03.20.
//

import Foundation

/**
 Extension of the `String` class
 */
extension String {
    
    /// Localized string interpreted from this string
    var localizedString: String {
        return NSLocalizedString(self, comment: "")
    }
    
}
