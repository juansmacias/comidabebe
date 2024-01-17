//
//  Store.swift
//  comidaBebe
//
//  Created by Juan Macias on 1/15/24.
//

import Combine

protocol Store {
    // MARK: - Properties
    
    var feedingDaysPublisher:AnyPublisher<[FeedingDay],Never> { get }
    
    //MARK: - Methods
    
    func addFeedingDay(_ feedingDay:FeedingDay) throws
}
