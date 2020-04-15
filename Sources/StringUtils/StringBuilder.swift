//
//  StringBuilder.swift
//  
//
//  Created by Witt, Robert on 27.03.20.
//

import Foundation

/**
 API to build strings. It can also handle optionals.
 */
public class StringBuilder {
    
    private var parts = [String]()
    
    /**
     Initialize the string builder with an optional string
     - parameter initialString: optional initial string
     */
    public init(initialString: String? = nil) {
        let _ = self.append(initialString)
    }
    
    /**
     Append a string if it is set
     - parameter string: optional string
     - returns: self for method chaining
     */
    public func append(_ string: String?) -> StringBuilder {
        if let string = string {
            parts.append(string)
        }
        return self
    }
    
    /**
     Prepend a string if it is set
     - parameter string: optional string
     - returns: self for method chaining
     */
    public func prepend(_ string: String?) -> StringBuilder {
        if let string = string {
            parts.insert(string, at: 0)
        }
        return self
    }
    
    /**
     Build the string with an optional separator
     - parameter separator: an optional separator
     - returns: the built string as optional
     */
    public func build(separator: String? = nil) -> String? {
        let joinedString = parts.joined(separator: separator ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
        return joinedString != "" ? joinedString : nil
    }
    
}
