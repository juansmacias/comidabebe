//
//  FeedingDay.swift
//  comidaBebe
//
//  Created by Juan Macias on 1/15/24.
//

import Foundation

enum FeedingPeriod {
    case MorningP1
    case MorningP2
    case MorningP3
    case MorningP4
    case AfternoonP1
    case AfternoonP2
    case AfternoonP3
    case AfternoonP4
}

struct FeedingDay {
    let date: Date
    var feedingItems: [FeedingPeriod:FeedingItem] = .init()
    
    public mutating func addFeedingitem(with fp:FeedingPeriod, fi:FeedingItem){
        feedingItems[fp] = fi
    }
    public mutating func removeFeedingitem(with fp:FeedingPeriod){
        feedingItems[fp] = nil
    }
}
