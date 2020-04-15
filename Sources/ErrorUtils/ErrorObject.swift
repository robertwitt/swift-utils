//
//  ErrorObject.swift
//  
//
//  Created by Witt, Robert on 27.03.20.
//

import Foundation

/**
 A generic implementation of the `Error` protocol
 */
class ErrorObject: Error {
    
    private let message: String
    
    var localizedDescription: String {
        return message
    }
    
    /**
     Initializer with a message
     - Parameter message: a message
     */
    init(_ message: String) {
        self.message = message
    }
    
    /**
     Alternative initializer with a key from a localized string file
     - Parameter message: a key from the `Localizable.strings` file
     */
    convenience init(localizedStringKey: String) {
        self.init(NSLocalizedString(localizedStringKey, comment: ""))
    }
    
}
