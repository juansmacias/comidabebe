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
    var discountPublisher: AnyPublisher<[FeedingDay], Never> {
        publisher(for: \.feedingDays)
            .compactMap { $0 }
            .replaceError(with: 0)
            .eraseToAnyPublisher()
    }
}
