//
//  DateHelpers.swift
//  comidaBebe
//
//  Created by Juan Macias on 1/15/24.
//

import Foundation

extension Date {
    static func DateAtMidnight(_ date:Date) -> Date {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day], from:date)
        let midnightDate = calendar.date(from: components)!
        
        return midnightDate
    }
    
    static func randomDate(in range: ClosedRange<Date>) -> Date {
        let timeInterval = TimeInterval.random(in: range.lowerBound.timeIntervalSinceReferenceDate...range.upperBound.timeIntervalSinceReferenceDate)
        return Date(timeIntervalSinceReferenceDate: timeInterval)
    }
}
