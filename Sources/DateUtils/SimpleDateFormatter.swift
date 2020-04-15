//
//  SimpleDateFormatter.swift
//  
//
//  Created by Witt, Robert on 22.03.20.
//

import Foundation

/**
 A simple API around Swift's `DateFormatter` and `DateComponentsFormatter` APIs.
 */
public class SimpleDateFormatter {
    
    private var locale: Locale
    
    /**
     Initializer to create a new instance of this class
     - Parameter locale: the local to be used in string representations (defaults to current locale)
     */
    public init(locale: Locale = Locale.current) {
        self.locale = locale
    }
    
    /**
     Format a date into a string with given date and time styles.
     - Parameter date: the date to be formatted
     - Parameter dateSytle: date style for the formatting
     - Parameter timeStyle: time style for the formatting
     - Returns: the formatted date string
     */
    public func format(date: Date, dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) -> String? {
        let formatter = DateFormatter()
        formatter.dateStyle = dateStyle
        formatter.timeStyle = timeStyle
        formatter.locale = locale
        return formatter.string(from: date)
    }
    
    /**
     Format a date into a string with a relative representation to the current date, for example `"Today"`, `"Yesterday"` etc.
     - Parameter relativeDate: the date to be formatted
     - Returns: the formatted date string
     */
    public func format(relativeDate date: Date) -> String? {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        formatter.locale = locale
        formatter.doesRelativeDateFormatting = true
        return formatter.string(from: date)
    }
    
}
