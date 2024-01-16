//
//  FeedingItem.swift
//  comidaBebe
//
//  Created by Juan Macias on 1/15/24.
//

import Foundation

public struct FeedingItem {
    var arrDates: [(Date,Date)] = .init()

    var startingDate: Date?
    
    var hours:Double {
        var hours = 0.0
        for dateTuple in arrDates {
            let (startDate, endDate) = dateTuple
            hours += calculateHours(startDate: startDate, endDate: endDate)
        }
        return hours
    }
    
    func calculateHours(startDate: Date, endDate: Date) -> TimeInterval {
        return endDate.timeIntervalSince(startDate) / 3600  // 3600 seconds in an hour
    }
    
    public mutating func startNewDate(_ date:Date){
        startingDate = date
    }
    
    public mutating func storeDate(_ endDate:Date){
        if let strDate = startingDate {
            arrDates.append((strDate,endDate))
        }
        startingDate = nil
    }
    
    public init(starting date:Date){
        startingDate = date
    }
    
}
