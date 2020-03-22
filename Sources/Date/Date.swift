//
//  Date.swift
//  
//
//  Created by Witt, Robert on 22.03.20.
//

import Foundation

/**
 Extension of the `Date` class with convenience APIs
 */
extension Date {
    
    /// String representation of this date, for example `"2019-12-13"`
    var dateString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        return dateFormatter.string(from: self)
    }
    
    /// String representations as date time offset, for example `"2019-12-13T09:13:47.000Z"`
    var dateTimeOffsetString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.000'Z'"
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        return dateFormatter.string(from: self)
    }
    
    /**
     Initialize a date from a date string, for example `"2019-12-13"`
     - Parameter dateString: a string representing a date
     */
    init?(dateString: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        guard let date = dateFormatter.date(from: dateString) else {
            return nil
        }
        self.init(timeIntervalSince1970: date.timeIntervalSince1970)
    }
    
    /**
     Initialize a date from a date time offset string, for example `"2019-12-13T09:13:47.000Z"`
     - Parameter dateTimeOffsetString a string representing a date time offset
     */
    init?(dateTimeOffsetString: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.000Z"
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        guard let date = dateFormatter.date(from: dateTimeOffsetString) else {
            return nil
        }
        self.init(timeIntervalSince1970: date.timeIntervalSince1970)
    }
    
    /**
     Initialize a date by adding or subtracting a number of days
     - Parameter daysFromNow: number of days to be added or subtracted (if negative)
     */
    init(daysFromNow: Int) {
        let date = Calendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: Date())
        self.init(timeInterval: TimeInterval(daysFromNow * 24 * 60 * 60), since: date ?? Date())
    }
    
}
