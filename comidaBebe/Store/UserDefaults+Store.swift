//
//  UserDefaults+Store.swift
//  comidaBebe
//
//  Created by Juan Macias on 1/15/24.
//

import Foundation
import Combine

extension UserDefaults: Store {
    
    // MARK: - Publisher
    var feedingDaysPublisher: AnyPublisher<[FeedingDay], Never> {
        publisher(for: \.feedingDays)
            .compactMap { $0 }
            .decode(
                type: [FeedingDay].self,
                decoder: JSONDecoder()
            ).replaceError(with: [])
            .eraseToAnyPublisher()
    }
}
