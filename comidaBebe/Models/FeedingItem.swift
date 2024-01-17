//
//  FeedingItem.swift
//  comidaBebe
//
//  Created by Juan Macias on 1/15/24.
//

import Foundation

struct FeedingItem:Codable {
    
    enum CodingKeys: String, CodingKey {
        case timeValue
    }
    
    internal let timeValue: Double
    
}
