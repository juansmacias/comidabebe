//
//  FeedingItemCellViewModel.swift
//  comidaBebe
//
//  Created by Juan Macias on 16/01/24.
//

import Foundation

struct FeedingItemCellViewModel {
    let feedingItem: FeedingItem
    let title:String
    let Subtitle:String
    
    var hoursValue: String {
        "\(feedingItem.timeValue)"
    }
}
