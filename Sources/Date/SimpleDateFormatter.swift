//
//  File.swift
//  
//
//  Created by Witt, Robert on 22.03.20.
//

import Foundation

/**
 A simple API around Swift's `DateFormatter` and `DateComponentsFormatter` APIs.
 */
class SimpleDateFormatter {
    
    /// Shared instance of this class
    static let shared = SimpleDateFormatter()
    
    private init() {}
    
    /**
     Format a date into a string with given date and time styles.
     - Parameter date: the date to be formatted
     - Parameter dateSytle: date style for the formatting
     - Parameter timeStyle: time style for the formatting
     - Returns: the formatted date string
     */
    func format(date: Date, dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) -> String? {
        let formatter = DateFormatter()
        formatter.dateStyle = dateStyle
        formatter.timeStyle = timeStyle
        formatter.locale = Locale.current
        return formatter.string(from: date)
    }
    
    /**
     Format a date into a string with a relative representation to the current date, for example `"Today"`, `"Yesterday"` etc.
     - Parameter relativeDate: the date to be formatted
     - Returns: the formatted date string
     */
    func format(relativeDate date: Date) -> String? {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        formatter.locale = Locale.current
        formatter.doesRelativeDateFormatting = true
        return formatter.string(from: date)
    }
    
    /**
     Format a date into a time string that is relative to another date, for example `"10 min"`, `"3 h"` etc.
     - Parameter date: date to be formatted
     - Parameter relativeTo: other date that `date` should be relative to
     - Returns: the formatted date string
     */
    func format(date: Date, relativeTo otherDate: Date) -> String? {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .full
        formatter.maximumUnitCount = 1
        formatter.allowedUnits = [.year, .month, .day, .hour, .minute, .second]
        return formatter.string(from: date, to: otherDate)
    }
    
}
