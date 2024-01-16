//
//  modelsTests.swift
//  comidaBebeTests
//
//  Created by Juan Macias on 1/15/24.
//

import XCTest
@testable import comidaBebe

final class modelsTests: XCTestCase {


    func testFeedingDay() throws {
        let date = Date.DateAtMidnight(Date())
        var feedingDay:FeedingDay = .init(date:date)
        let fi1 = FeedingItem(starting: .now)
        let thirtyDaysAgo = Calendar.current.date(byAdding: .day, value: -30, to: date)!
        let randomDateWithinLast30Days = Date.randomDate(in: thirtyDaysAgo...date)

        let fi2 = FeedingItem(starting: randomDateWithinLast30Days)
        
        
        feedingDay.addFeedingitem(with: .MorningP1, fi: fi1)
        
        XCTAssertEqual(fi1.startingDate, feedingDay.feedingItems[.MorningP1]?.startingDate)
        
        feedingDay.addFeedingitem(with: .MorningP1, fi: fi2)
        XCTAssertEqual(fi2.startingDate, feedingDay.feedingItems[.MorningP1]?.startingDate)
        
        feedingDay.removeFeedingitem(with: .MorningP1)
        
        XCTAssertNil(feedingDay.feedingItems[.MorningP1])
    }


}
