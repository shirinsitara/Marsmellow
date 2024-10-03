//
//  Item.swift
//  Marsmellow
//
//  Created by Shirin Sitara AJ on 03/10/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
